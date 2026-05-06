package handler

import (
	"encoding/json"
	"fmt"
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

type adminListUserResponse struct {
	ID       int64  `json:"ID"`
	Username string `json:"Username"`
	Email    string `json:"Email"`
	RoleName string `json:"RoleName"`
	IsActive bool   `json:"IsActive"`
}

func (app *App) HandleSearchUsers(c *gin.Context) {
	search := c.Query("search")
	if search == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "search param required"})
		return
	}
	users, err := app.Queries.SearchUsers(search)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, users)
}

func (app *App) HandlerGetUser(c *gin.Context) {
	user, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"Error": "utilisateur non authentifié"})
		return
	}
	currentUser := user.(models.User)
	key := cacheKey("user", fmt.Sprint(currentUser.ID))

	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}

	log.Printf("cache miss for key=%s", key)

	currentUserID, err := app.Queries.GetValidUserByID(currentUser.ID)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "user not found"})
		return
	}

	result, err := json.Marshal(gin.H{
		"ID":        currentUserID.ID,
		"Username":  currentUserID.Username,
		"Email":     currentUserID.Email,
		"AvatarURL": currentUserID.AvatarURL,
		"AuthType":  currentUserID.AuthType,
		"RoleName":  currentUserID.RoleName,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, userCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleGetUserByID(c *gin.Context) {
	if _, exists := c.Get("user"); !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"Error": "utilisateur non authentifié"})
		return
	}

	idStr := c.Param("id")
	id, err := strconv.ParseInt(idStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid user id"})
		return
	}

	key := cacheKey("user", fmt.Sprint(id))

	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}

	log.Printf("cache miss for key=%s", key)

	user, err := app.Queries.GetValidUserByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "user not found"})
		return
	}

	result, err := json.Marshal(gin.H{
		"ID":        user.ID,
		"Username":  user.Username,
		"Email":     user.Email,
		"AvatarURL": user.AvatarURL,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, userCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleDeleteUser(c *gin.Context) {
	user, _ := c.Get("user")
	currentUser := user.(models.User)
	err := app.Queries.DeleteUser(currentUser.ID)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "cannot delete user"})
		return
	}
	app.cacheDelete(cacheKey("user", fmt.Sprint(currentUser.ID)))
	c.SetCookie("Authorization", "", -1, "/", "", false, true)
	c.JSON(http.StatusOK, gin.H{"message": "user deleted"})
}

func (app *App) HandleUserLogout(c *gin.Context) {
	c.SetCookie("Authorization", "", -1, "/", "", false, true)
	c.JSON(http.StatusOK, gin.H{"message": "logged out"})
}

func (app *App) HandleAdminListUsers(c *gin.Context) {
	user, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"Error": "utilisateur non authentifié"})
		return
	}
	currentUser := user.(models.User)
	if currentUser.RoleName != "admin" && currentUser.RoleName != "owner" {
		c.JSON(http.StatusForbidden, gin.H{"error": "access denied"})
		return
	}
	users, err := app.Queries.ListUsers(currentUser.ID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	result := make([]adminListUserResponse, 0, len(users))
	for _, user := range users {
		result = append(result, adminListUserResponse{
			ID:       user.ID,
			Username: user.Username,
			Email:    user.Email,
			RoleName: user.RoleName,
			IsActive: user.IsActive,
		})
	}
	c.JSON(http.StatusOK, result)
}
