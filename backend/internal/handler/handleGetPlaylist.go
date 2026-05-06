package handler

import (
	"errors"
	"ft_transcendance/backend/internal/models"
	"ft_transcendance/backend/internal/queries"
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func (app *App) HandleGetPlaylistUser(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)
	playlists, err := app.Queries.GetPlaylistUserID(user.ID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch playlists"})
		return
	}
	c.JSON(http.StatusOK, playlists)
}

func (app *App) HandleGetPlaylistByID(c *gin.Context) {
	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}
	playlist, err := app.Queries.GetPlaylistByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "playlist not found"})
		return
	}
	c.JSON(http.StatusOK, playlist)
}

func (app *App) HandleCreatePlaylist(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	var body struct {
		Title string `json:"title"`
	}
	if c.Bind(&body) != nil || strings.TrimSpace(body.Title) == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "title required"})
		return
	}
	body.Title = strings.TrimSpace(body.Title)
	if len([]rune(body.Title)) > 120 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "title too long (max 100 characters)"})
		return
	}

	playlist, err := app.Queries.CreatePlaylist(user.ID, body.Title)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot create playlist"})
		return
	}
	c.JSON(http.StatusOK, playlist)
}

func (app *App) HandleDeletePlaylist(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}

	if err := app.Queries.DeletePlaylist(id, user.ID); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot delete playlist"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "playlist deleted"})
}

func (app *App) HandleAddTrackToPlaylist(c *gin.Context) {
	playlistID, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}

	var body struct {
		TrackID int64 `json:"track_id"`
	}
	if c.Bind(&body) != nil || body.TrackID == 0 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "track_id required"})
		return
	}

	position, err := app.Queries.CountPlaylistTracks(playlistID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot get playlist size"})
		return
	}

	if err := app.Queries.AddTrackToPlaylist(playlistID, body.TrackID, position+1); err != nil {
		if errors.Is(err, queries.ErrDuplicateTrack) {
			c.JSON(http.StatusConflict, gin.H{"error": "track already in playlist"})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot add track"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "track added"})
}

func (app *App) HandleRemoveTrackFromPlaylist(c *gin.Context) {
	playlistID, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}
	trackID, err := strconv.ParseInt(c.Param("trackId"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid track id"})
		return
	}

	if err := app.Queries.RemoveTrackFromPlaylist(playlistID, trackID); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot remove track"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "track removed"})
}

func (app *App) HandleRenamePlaylist(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}

	var body struct {
		Title string `json:"title"`
	}
	if c.Bind(&body) != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid body"})
		return
	}
	body.Title = strings.TrimSpace(body.Title)
	if body.Title == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "title required"})
		return
	}
	if len([]rune(body.Title)) > 120 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "title too long (max 100 characters)"})
		return
	}

	if err := app.Queries.RenamePlaylist(id, user.ID, body.Title); err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusNotFound, gin.H{"error": "playlist not found"})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot rename playlist"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "playlist renamed"})
}

func (app *App) HandleReorderPlaylistTracks(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid playlist id"})
		return
	}

	var items []queries.ReorderItem
	if err := c.Bind(&items); err != nil || len(items) == 0 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "body must be a non-empty array of {track_id, position}"})
		return
	}

	seenTracks := make(map[int64]struct{}, len(items))
	seenPositions := make(map[int64]struct{}, len(items))
	for _, item := range items {
		if item.Position <= 0 {
			c.JSON(http.StatusBadRequest, gin.H{"error": "positions must be positive integers"})
			return
		}
		if _, dup := seenTracks[item.TrackID]; dup {
			c.JSON(http.StatusBadRequest, gin.H{"error": "duplicate track_id in request"})
			return
		}
		if _, dup := seenPositions[item.Position]; dup {
			c.JSON(http.StatusBadRequest, gin.H{"error": "duplicate position in request"})
			return
		}
		seenTracks[item.TrackID] = struct{}{}
		seenPositions[item.Position] = struct{}{}
	}
	for i := int64(1); i <= int64(len(items)); i++ {
		if _, ok := seenPositions[i]; !ok {
			c.JSON(http.StatusBadRequest, gin.H{"error": "positions must form a contiguous sequence starting from 1"})
			return
		}
	}

	if err := app.Queries.ReorderPlaylistTracks(id, user.ID, items); err != nil {
		if errors.Is(err, queries.ErrNotOwner) {
			c.JSON(http.StatusNotFound, gin.H{"error": "playlist not found"})
			return
		}
		if errors.Is(err, queries.ErrTrackMismatch) {
			c.JSON(http.StatusBadRequest, gin.H{"error": "track list does not match playlist contents"})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot reorder tracks"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "tracks reordered"})
}
