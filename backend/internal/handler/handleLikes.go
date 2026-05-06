package handler

import (
	"ft_transcendance/backend/internal/models"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func (app *App) HandleGetUserLikes(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)
	likes, err := app.Queries.GetUserLikes(user.ID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch likes"})
		return
	}
	c.JSON(http.StatusOK, likes)
}

func (app *App) HandleToggleLike(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	trackID, err := strconv.ParseInt(c.Param("trackId"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid track id"})
		return
	}

	likes, err := app.Queries.GetUserLikes(user.ID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch likes"})
		return
	}

	for _, like := range likes {
		if like.TrackID == trackID {
			if err := app.Queries.RemoveLike(user.ID, trackID); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot remove like"})
				return
			}
			c.JSON(http.StatusOK, gin.H{"message": "like removed"})
			return
		}
	}

	if err := app.Queries.AddLike(user.ID, trackID); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot add like"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "like added"})
}
