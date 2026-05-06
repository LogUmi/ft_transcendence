package handler

import (
	"ft_transcendance/backend/internal/models"
	"github.com/gin-gonic/gin"
	"net/http"
)

func (app *App) HandleGetHomeAnalytic(c *gin.Context) {
	typeStr := c.Param("type")
	if typeStr != "music" && typeStr != "podcast" {
		c.JSON(http.StatusBadRequest, gin.H{"Error": "type must be 'music' or 'podcast'"})
		return
	}
	analytics, err := app.Queries.GetHomeAnalytics(typeStr, 100)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"Error": "erreur lors de la récupération des analyses home"})
		return
	}
	c.JSON(http.StatusOK, analytics)
}

func (app *App) HandleGetUserAnalytic(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)
	typeStr := c.Param("type")
	if typeStr != "music" && typeStr != "podcast" {
		c.JSON(http.StatusBadRequest, gin.H{"Error": "type must be 'music' or 'podcast'"})
		return
	}
	analytics, err := app.Queries.GetUserAnalytics(user.ID, typeStr, 100)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"Error": "erreur lors de la récupération des analyses home"})
		return
	}
	c.JSON(http.StatusOK, analytics)

}
