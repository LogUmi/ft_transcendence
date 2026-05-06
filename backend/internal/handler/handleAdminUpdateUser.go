package handler

import (
	"errors"
	"fmt"
	"ft_transcendance/backend/internal/models"
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
	"log"
	"net/http"
)

type BodyRoleUpdate struct {
	ID		int64	`json:"id"`
	Action	string	`json:"action"`
}

func (app *App) HandleAdminUpdateUser(c *gin.Context) {

	// get user
	rawUser, exist := c.Get("user")
	if !exist {
		c.JSON(http.StatusUnauthorized, gin.H{"error":"unauthorized"})
		return
	}
	user := rawUser.(models.User)
	// check who is user
	if !(user.ID > 0 && user.IsActive && (user.RoleName == "owner" || user.RoleName == "admin"))  {
		c.JSON(http.StatusUnauthorized, gin.H{"error":"unauthorized"})
		return
	}

	// get body
	var body BodyRoleUpdate
	err := c.ShouldBindBodyWithJSON(&body)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error":"bad request"})
		return
	}
	// get who user wanna deal with
	targetUser, err := app.Queries.GetUserByID(body.ID)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error":"not found"})
			return
		}
		log.Printf("Error: HandleAdminUpdateUser: GetUserByID(body.ID) failed : %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error":"internal server error"})
		return
	}
	if targetUser.RoleName == "owner" || targetUser.ID == user.ID {
		c.JSON(http.StatusForbidden, gin.H{"error":"forbidden"})
		return
	}

	fields := map[string]interface{}{}
	switch body.Action {
	case "set_admin":
		fields["RoleName"] = "admin"
	case "set_user":
		fields["RoleName"] = "user"
	case "set_active":
		fields["IsActive"] = true
	case "set_inactive":
		fields["IsActive"] = false
	default:
		c.JSON(http.StatusBadRequest, gin.H{"error":"bad request"})
		return 
	}
	
	err = app.Queries.UpdateUser(body.ID, fields)
	if err != nil {
		log.Printf("Error: HandleAdminUpdateUser: UpdateUser : %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error":"internal server error"})
		return
	}

	app.cacheDelete(cacheKey("user", fmt.Sprint(targetUser.ID)))

	c.JSON(http.StatusOK, gin.H{"message":"ok"})
}
