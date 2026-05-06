package queries

import (
	"errors"
	"ft_transcendance/backend/internal/models"
	"strings"

	"golang.org/x/crypto/bcrypt"
	"gorm.io/gorm"
)

func (queries *Queries) GetValidUserByID(id int64) (*models.User, error) {
	var user models.User
	res := queries.QueriesDB.First(&user, "id = ? AND is_active = ?", id, true)
	return &user, res.Error
}

func (queries *Queries) GetUserByID(id int64) (*models.User, error) {
	var user models.User
	res := queries.QueriesDB.First(&user, "id = ?", id)
	return &user, res.Error
}

func (queries *Queries) GetUserByUsername(username string) (*models.User, error) {
	username = strings.TrimSpace(username)

	if username == "" {
		return nil, errors.New("username vide")
	}

	var user models.User
	if err := queries.QueriesDB.First(&user, "username = ? AND is_active = ?", username, true).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

func (queries *Queries) GetValidUserByEmail(email string) (*models.User, error) {
	email = strings.TrimSpace(email)

	if email == "" {
		return nil, errors.New("email vide")
	}

	var user models.User
	if err := queries.QueriesDB.First(&user, "email = ? AND is_active = ?", email, true).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

func (queries *Queries) GetUserByEmail(email string) (*models.User, error) {
	email = strings.TrimSpace(email)

	if email == "" {
		return nil, errors.New("email vide")
	}

	var user models.User
	if err := queries.QueriesDB.First(&user, "email = ?", email).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

func (queries *Queries) CreateUser(email, password, username string) (*models.User, error) {
	// has pass
	hash, err := bcrypt.GenerateFromPassword([]byte(password), 10)
	if err != nil {
		return nil, err
	}
	// create user
	hashString := string(hash)
	user := models.User{Username: username, Email: email, PasswordHash: &hashString}
	result := queries.QueriesDB.Create(&user)
	return &user, result.Error
}

func (queries *Queries) SearchUsers(username string) ([]models.User, error) {
	var users []models.User
	res := queries.QueriesDB.Where("username ILIKE ? AND is_active = ?", "%"+username+"%", true).Find(&users)
	return users, res.Error
}

func (queries *Queries) UpdateUser(id int64, fields map[string]interface{}) error {
	result := queries.QueriesDB.Model(&models.User{}).Where("id = ?", id).Updates(fields)
	return result.Error
}

func (queries *Queries) UpdatePassword(id int64, hash string) error {
	result := queries.QueriesDB.Model(&models.User{ID: id}).Update("password_hash", hash)
	return result.Error
}

func (queries *Queries) UpdateEmail (id int64, email string) error { 
	result := queries.QueriesDB.Model(&models.User{ID: id}).Update("email", email)
	return result.Error	
}

func (queries *Queries) DeleteUser(id int64) error {
	res := queries.QueriesDB.Model(&models.User{}).Where("id = ?", id).Update("is_active", false)
	return res.Error
}

func (queries *Queries) UpsertOAuthUser(oauthID, email, username, avatar, provider string) (*models.User, error) {
	var user models.User
	column := "google_id"

	// user OAuth déjà connu
	if err := queries.QueriesDB.Where(column+" = ?", oauthID).First(&user).Error; err == nil {
		if avatar != "" {
			queries.QueriesDB.Model(&user).Update("avatar_url", avatar)
			user.AvatarURL = avatar
		}
		return &user, nil
	}

	// email déjà existant → on lie le compte OAuth
	if err := queries.QueriesDB.Where("email = ? AND is_active = ?", email, true).First(&user).Error; err == nil {
		queries.QueriesDB.Model(&user).Update(column, oauthID)
		return &user, nil
	}

	// nouvel utilisateur
	user = models.User{
		Email:    email,
		Username: username,
	}
	if provider == "google" {
		user.GoogleID = &oauthID
	}
	var result *gorm.DB
	if avatar != "" {
		user.AvatarURL = avatar
		result = queries.QueriesDB.Create(&user)
	} else {
		result = queries.QueriesDB.Omit("avatar_url").Create(&user)
	}
	return &user, result.Error
}

func (queries *Queries) ListUsers(excludeID int64) ([]models.User, error) {
	var users []models.User
	res := queries.QueriesDB.Where("id != ? AND role_name != ?", excludeID, "owner").Find(&users)
	return users, res.Error
}

