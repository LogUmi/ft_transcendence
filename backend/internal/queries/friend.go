package queries

import (
	"errors"
	"ft_transcendance/backend/internal/models"

	"gorm.io/gorm"
)

// ====================================================  UTILS  =======================================================

func orderIDs(id1, id2 int64) (int64, int64) {
	if id1 < id2 {
		return id1, id2
	}
	return id2, id1
}


// ====================================================================================================================

// CREATE AND RETURN A POINTER TO THE NEWLY CREATED FRIEND TABLE ON SUCCESS OR AN ERROR
func (r *Queries) CreateFriendship(senderID, receiverID int64) (*models.Friend, error) {

	low, high := orderIDs(senderID, receiverID)

	friendship := models.Friend{
		UserIDLow:     low,
		UserIDHigh:    high,
		RequestStatus: "pending",
		CreatedBy:     senderID,
	}
	err := r.QueriesDB.Create(&friendship).Error
	if err != nil {
		return nil, err
	}

	return &friendship, nil
}

// ====================================================================================================================

func (r *Queries) UpdateFriendshipStatus(userID1 int64, userID2 int64, newStatus string) error {

	low, high := orderIDs(userID1, userID2)

	result := r.QueriesDB.
		Model(&models.Friend{}).
		Where("user_id_low = ? AND user_id_high = ?", low, high).
		Update("request_status", newStatus)

	if result.Error != nil {
		return result.Error
	}
	if result.RowsAffected == 0 {
		return errors.New("friendship not found")
	}

	return nil
}

// ====================================================================================================================

// return error if : userID == friendID, no record found (return nil,nil), else nil, query.Error
func (r *Queries) GetFriendshipBetween(userID int64, friendID int64) (*models.Friend, error) {

	low, high := orderIDs(userID, friendID)

	var friendship models.Friend
	query := r.QueriesDB.
		Where("user_id_low = ? AND user_id_high = ?", low, high).
		First(&friendship)

	if query.Error != nil {
		if errors.Is(query.Error, gorm.ErrRecordNotFound) {
			return nil, nil
		}
		return nil, query.Error
	}
	return &friendship, nil
}

// ====================================================================================================================

// GET USER'S FRIENDS (WHICH ARE IN friendShipState STATE) BY userID
func (r *Queries) GetFriendsTabByUserID(userID int64, friendShipState string) ([]models.Friend, error) {

	friends := []models.Friend{}
	sqlCondition := "request_status = ? AND (user_id_low = ? OR user_id_high = ?)"
	query := r.QueriesDB.Where(sqlCondition, friendShipState, userID, userID).Find(&friends)

	return friends, query.Error
}

// ====================================================================================================================

func (r *Queries) GetUsersTabFromIDTab(IDs []int64) ([]models.User, error) {

	Users := []models.User{}
	query := r.QueriesDB.Where("is_active = ? AND id IN ?", true, IDs).Find(&Users)

	return Users, query.Error
}

// ====================================================================================================================

func (r *Queries) GetFriendsUserTableByUserID(userID int64, status string) ([]models.User, error) {

	friendship, err := r.GetFriendsTabByUserID(userID, status)
	if err != nil {
		return nil, err
	}

	// GET A TAB OF FRIENDS ID
	friendIDs := make([]int64, 0, len(friendship))
	for _, relation := range friendship {
		if relation.UserIDLow == userID {
			friendIDs = append(friendIDs, relation.UserIDHigh)
		} else {
			friendIDs = append(friendIDs, relation.UserIDLow)
		}
	}
	// USER DON'T HAVE FRIEND...
	if len(friendIDs) == 0 {
		return nil, nil
	}

	return r.GetUsersTabFromIDTab(friendIDs)
}
