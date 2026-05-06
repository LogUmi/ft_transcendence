package handler

import (
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)

type friendProfile struct {
	ID        int64  `json:"id"`
	Username  string `json:"username"`
	AvatarURL string `json:"avatar_url"`
	CreatedBy int64  `json:"created_by"`
}

// HANDLER WHICH GIVE USER'S FRIENDS LIST
func (app *App) HandleGetFriends(c *gin.Context) {

	// GET USER'S ID
	user, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"Error": "unauthorized"})
		return
	}
	userID := user.(models.User).ID

	status := c.Query("status")
	if status == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "status query parameter is required"})
		return
	}
	if !validStatuses[status] {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid status"})
		return
	}

	friendship, err := app.Queries.GetFriendsTabByUserID(userID, status)
	if err != nil {
		log.Printf("Error HandleGetFriends(): %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "internal server error"})
		return
	}

	// GET A TAB OF FRIENDS ID
	var friendID int64
	friendIDs := make([]int64, 0, len(friendship))
	createdByMap := make(map[int64]int64)
	for _, relation := range friendship {
		if relation.UserIDLow == userID {
			friendID = relation.UserIDHigh
		} else {
			friendID = relation.UserIDLow
		}
		friendIDs = append(friendIDs, friendID)
		createdByMap[friendID] = relation.CreatedBy
	}

	friends, err := app.Queries.GetUsersTabFromIDTab(friendIDs)
	if err != nil {
		log.Printf("Error HandleGetFriends: Queries.GetUsersTabFromIDTab: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "internal server error"})
		return
	}

	result := make([]friendProfile, 0, len(friends))
	for _, friend := range friends {
		result = append(result, friendProfile{
			ID:        friend.ID,
			Username:  friend.Username,
			AvatarURL: friend.AvatarURL,
			CreatedBy: createdByMap[friend.ID],
		})
	}

	c.JSON(http.StatusOK, result)
}
