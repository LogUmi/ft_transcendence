package handler

import (
	"errors"
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type UpdateOrCreateBODY struct {
	NewStatus string `json:"status"`
}

var validStatuses = map[string]bool{
	"pending":  true, // update created by
	"granted":  true,
	"rejected": true,
	"blocked":  true, // update created by
}

// ------------------------------------------------------------------------------------------------------------

func (app *App) HandleUpdateOrCreateFriend(c *gin.Context) {

	// get and check: body, user, targeted user
	user, target, body, codeError, objError := getAndCheckIDs(c, app)
	if objError != nil {
		c.JSON(codeError, objError)
		return
	}

	// even more consistency checks
	if user.ID == target.ID {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Cannot target yourself"})
		return
	}
	if !validStatuses[body.NewStatus] {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Bad request"})
		return
	}

	// get the related friend table (could be nil)
	friendship, err := app.Queries.GetFriendshipBetween(user.ID, target.ID)
	if err != nil {
		log.Printf("Error: HandleUpdateOrCreateFriend: GetFriendShipBetween: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Internal server error"})
		return
	}

	// CASE 1: first time those two are involved about a friendship situation
	// so we create one
	if friendship == nil {

		// if there weren't any friendship, the only possible status would be pending...
		if body.NewStatus != "pending" {
			c.JSON(http.StatusBadRequest, gin.H{"error": "Bad request"})
			return
		}

		_, err = app.Queries.CreateFriendship(user.ID, target.ID)
		if err != nil {
			log.Printf("Error: HandleUpdateOrCreateFriend: CreateFriendship: %v\n", err)
			c.JSON(http.StatusInternalServerError, gin.H{"error": "Internal server error"})
			return
		}

		app.Hub.SendToUser(target.ID, Response{
			Type:    "friend.request",
			Success: true,
			Payload: map[string]any{"from_user_id": user.ID},
		})

		c.JSON(http.StatusOK, gin.H{"message": "Friend request sent"})
		return
	}

	// CASE 2: this is an update request
	err = validateTransition(friendship, user.ID, body.NewStatus)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	friendship.RequestStatus = body.NewStatus
	if body.NewStatus == "pending" || body.NewStatus == "blocked" {
		friendship.CreatedBy = user.ID
	}

	err = app.Queries.SaveRecord(friendship)
	if err != nil {
		log.Printf("Error: HandleUpdateOrCreateFriend: SaveRecord: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Internal server error"})
		return
	}

	// notifier l'autre utilisateur via WS selon le nouveau statut
	otherID := target.ID
	switch body.NewStatus {
	case "granted":
		app.Hub.SendToUser(otherID, Response{
			Type:    "friend.accepted",
			Success: true,
			Payload: map[string]any{"user_id": user.ID},
		})
	case "rejected":
		app.Hub.SendToUser(otherID, Response{
			Type:    "friend.removed",
			Success: true,
			Payload: map[string]any{"user_id": user.ID},
		})
	case "blocked":
		app.Hub.SendToUser(otherID, Response{
			Type:    "friend.blocked",
			Success: true,
			Payload: map[string]any{"user_id": user.ID},
		})
	case "pending":
		app.Hub.SendToUser(otherID, Response{
			Type:    "friend.request",
			Success: true,
			Payload: map[string]any{"from_user_id": user.ID},
		})
	}

	c.JSON(http.StatusOK, gin.H{"message": "Friendship updated"})
}

// ------------------------------------------------------------------------------------------------------------

// get and check: body, user, targeted user
func getAndCheckIDs(c *gin.Context, app *App) (*models.User, *models.User, *UpdateOrCreateBODY, int, any) {

	// get user
	rawUser, exist := c.Get("user")
	if !exist || rawUser.(models.User).ID == 0 || rawUser.(models.User).IsActive == false {
		return nil, nil, nil, http.StatusUnauthorized, gin.H{"error": "Unauthorized"}
	}
	user := rawUser.(models.User)

	// get body
	var body UpdateOrCreateBODY
	err := c.ShouldBindBodyWithJSON(&body)
	if err != nil {
		return nil, nil, nil, http.StatusBadRequest, gin.H{"error": "Bad request"}
	}

	// get target user
	targetIDStr := c.Param("id")
	targetID, err := strconv.ParseInt(targetIDStr, 10, 64)
	if err != nil {
		return nil, nil, nil, http.StatusBadRequest, gin.H{"error": "Bad request"}
	}
	target, err := app.Queries.GetUserByID(targetID)
	if err != nil {
		log.Printf("Error: HandleUpdateOrCreateFriend: GetUserByID: %v\n", err)
		return nil, nil, nil, http.StatusBadRequest, gin.H{"error": "Bad request"}
	}
	if target.ID == 0 || target.IsActive == false {
		return nil, nil, nil, http.StatusBadRequest, gin.H{"error": "Bad request"}
	}

	return &user, target, &body, http.StatusOK, nil
}

// ------------------------------------------------------------------------------------------------------------

func validateTransition(friendship *models.Friend, userID int64, newStatus string) error {

	currStatus := friendship.RequestStatus

	if currStatus == newStatus {
		return errors.New("Status is already " + currStatus)
	}

	if currStatus == "blocked" && friendship.CreatedBy != userID {
		return errors.New("Only the blocker can change a blocked friendship")
	}

	switch newStatus {
	case "pending":
		if currStatus != "rejected" {
			return errors.New("Cannot move to " + newStatus + " from " + currStatus)
		}
		return nil

	case "granted":
		if currStatus != "pending" {
			return errors.New("Cannot move to " + newStatus + " from " + currStatus)
		}
		return nil

	case "rejected":
		return nil

	case "blocked":
		return nil
	}

	return errors.New("Invalid transition")
}
