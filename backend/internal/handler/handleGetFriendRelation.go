package handler

import (
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type RelationResponse struct {
	Status    *string `json:"status"`
	CreatedBy *int64  `json:"created_by"`
}

func (app *App) HandleGetRelation(c *gin.Context) {

	rawUser, exist := c.Get("user")
	if !exist || rawUser.(models.User).ID == 0 || !rawUser.(models.User).IsActive {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "Unauthorized"})
		return
	}
	user := rawUser.(models.User)

	targetIDStr := c.Param("id")
	targetID, err := strconv.ParseInt(targetIDStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid user id"})
		return
	}

	if user.ID == targetID {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Cannot target yourself"})
		return
	}

	friendship, err := app.Queries.GetFriendshipBetween(user.ID, targetID)
	if err != nil {
		log.Printf("Error: HandleGetRelation: GetFriendshipBetween: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Internal server error"})
		return
	}

	if friendship == nil {
		c.JSON(http.StatusOK, RelationResponse{Status: nil, CreatedBy: nil})
		return
	}

	c.JSON(http.StatusOK, RelationResponse{
		Status:    &friendship.RequestStatus,
		CreatedBy: &friendship.CreatedBy,
	})
}
