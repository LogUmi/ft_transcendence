package handler

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"time"

	"ft_transcendance/backend/internal/models"

	"github.com/gin-gonic/gin"
)

func (app *App) HandleUploadAvatar(c *gin.Context) {
	user, _ := c.Get("user")
	currentUser := user.(models.User)

	file, header, err := c.Request.FormFile("avatar")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "avatar file required"})
		return
	}
	defer file.Close()

	os.MkdirAll("/app/uploads/avatars", 0755)

	filename := fmt.Sprintf("%d_%d%s", currentUser.ID, time.Now().UnixNano(), filepath.Ext(header.Filename))
	dst, _ := os.Create("/app/uploads/avatars/" + filename)
	defer dst.Close()
	io.Copy(dst, file)

	avatarURL := "/uploads/avatars/" + filename
	app.Queries.UpdateUser(currentUser.ID, map[string]interface{}{"avatar_url": avatarURL})
	app.cacheDelete(cacheKey("user", fmt.Sprint(currentUser.ID)))

	c.JSON(http.StatusOK, gin.H{"avatar_url": avatarURL})
}

