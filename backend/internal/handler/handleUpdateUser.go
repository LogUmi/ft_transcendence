package handler

import (
	"fmt"
	"ft_transcendance/backend/internal/models"
	"net/http"

	"github.com/gin-gonic/gin"
	"golang.org/x/crypto/bcrypt"
)

func (app *App) HandleUpdateUser(c *gin.Context) {
	var body struct {
		Email       string
		Username    string
		AvatarURL   string
		OldPassword string
		Password    string
		OldEmail	string
		NewEmail	string
	}
	if c.Bind(&body) != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "failed to read body"})
		return
	}

	user, _ := c.Get("user")
	currentUser := user.(models.User)
	field := map[string]interface{}{}

	if body.Username != "" {
		field["username"] = body.Username
	}
	if body.Email != "" {
		field["email"] = body.Email
	}
	if body.AvatarURL != "" {
		field["avatar_url"] = body.AvatarURL
	}

	var newEmail string
	if body.NewEmail != "" {
		if body.OldEmail == "" {
			c.JSON(http.StatusBadRequest, gin.H{
				"error": "Old mail is required",
			})
			return
		}
		if err := bcrypt.CompareHashAndPassword([]byte(*currentUser.PasswordHash), []byte(body.Password)); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{
				"error": "password is incorrect. Please write the correct password",
			})
			return
		}
		if body.OldEmail == body.NewEmail {
			c.JSON(http.StatusBadRequest, gin.H{
				"error": "Emails cannot be the same",
			})
			return
		}
		newEmail = body.NewEmail
	}

	if newEmail != "" {
		if err := app.Queries.UpdateEmail(currentUser.ID, newEmail); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "cannot update email."})
			return
		}
	}

	var newPasswordHash string
	if body.Password != "" && body.OldPassword != "" {
		if err := bcrypt.CompareHashAndPassword([]byte(*currentUser.PasswordHash), []byte(body.OldPassword)); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "old password is incorrect"})
			return
		}
		hash, err := bcrypt.GenerateFromPassword([]byte(body.Password), 10)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to hash password"})
			return
		}
		newPasswordHash = string(hash)
	}

	if len(field) == 0 && newPasswordHash == "" && newEmail == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "no fields to update"})
		return
	}
	if len(field) > 0 {
		if err := app.Queries.UpdateUser(currentUser.ID, field); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "cannot update user."})
			return
		}
	}
	if newPasswordHash != "" {
		if err := app.Queries.UpdatePassword(currentUser.ID, newPasswordHash); err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "cannot update password."})
			return
		}
	}

	app.cacheDelete(cacheKey("user", fmt.Sprint(currentUser.ID)))
	c.JSON(http.StatusOK, gin.H{"message": "user updated"})
}
