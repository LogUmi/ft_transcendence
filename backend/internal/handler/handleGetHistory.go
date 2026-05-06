package handler

import (
	"encoding/json"
	"errors"
	"ft_transcendance/backend/internal/models"
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

type historyLogResponse struct {
	ID                  int64        `json:"ID"`
	UserID              int64        `json:"UserID"`
	TrackID             int64        `json:"TrackID"`
	LastStartedAt       *time.Time   `json:"LastStartedAt"`
	UpdatedAt           time.Time    `json:"UpdatedAt"`
	LastPositionSeconds int64        `json:"LastPositionSeconds"`
	LastSecondsListened int64        `json:"LastSecondsListened"`
	Completed           bool         `json:"Completed"`
	Skipped             bool         `json:"Skipped"`
	Track               models.Track `json:"Track"`
}

func (app *App) HandleGetHistory(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)
	historyLog, err := app.Queries.GetUserHistory(user.ID)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch history"})
		return
	}
	response := make([]historyLogResponse, 0, len(historyLog))
	for _, log := range historyLog {
		response = append(response, historyLogResponse{
			ID:                  log.ID,
			UserID:              log.UserID,
			TrackID:             log.TrackID,
			LastStartedAt:       log.StartedAt,
			UpdatedAt:           log.CreatedAt,
			LastPositionSeconds: log.LastPositionSeconds,
			LastSecondsListened: log.LastSecondsListened,
			Completed:           log.Completed,
			Skipped:             log.Skipped,
			Track:               log.Track,
		})
	}
	c.JSON(http.StatusOK, response)
}

func (app *App) HandleAddHistory(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	var body models.HistoryUpsertInput
	if c.Bind(&body) != nil || body.TrackID == 0 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "TrackID required"})
		return
	}

	if err := app.Queries.UpsertHistory(user.ID, body); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot save history"})
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "history saved"})
}

func (app *App) HandleGetHistoryByTrackID(c *gin.Context) {
	userRaw, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "utilisateur non authentifié"})
		return
	}
	user := userRaw.(models.User)

	idStr := c.Param("id")
	id, err := strconv.ParseInt(idStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid track id"})
		return
	}
	var history models.History
	history, err = app.Queries.GetUserHistoryByTrackID(user.ID, id)
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			c.JSON(http.StatusOK, nil)
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch history"})
		return
	}
	result, err := json.Marshal(gin.H{
		"TrackID":              history.TrackID,
		"UserID":               history.UserID,
		"StartedAt":            history.LastStartedAt,
		"EndedAt":              history.LastEndedAt,
		"LastPositionSeconds":  history.LastPositionSeconds,
		"LastSecondsListened":  history.LastSecondsListened,
		"Completed":            history.LastCompleted,
		"Skipped":              history.LastSkipped,
		"PlayCount":            history.PlayCount,
		"TotalSecondsListened": history.TotalSecondsListened,
		"CompletedCount":       history.CompletedCount,
		"SkippedCount":         history.SkippedCount,
	})

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}
	c.Data(http.StatusOK, "application/json", result)

}
