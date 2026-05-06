package handler

import (
	"fmt"
	"ft_transcendance/backend/internal/models"
	"github.com/gin-gonic/gin"
	"github.com/meilisearch/meilisearch-go"
	"log"
	"net/http"
)

type BodyUpdateTracks struct {
	TrackID  int64 `json:"id_track"`
	DeadLink bool  `json:"is_dead_link"`
}

func (app *App) HandleAdminUpdateTrack(c *gin.Context) {

	rawUser, exist := c.Get("user")
	if !exist || rawUser.(models.User).ID <= 0 || !rawUser.(models.User).IsActive {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthorized"})
		return
	}
	user := rawUser.(models.User)
	if user.RoleName == "user" {
		c.JSON(http.StatusForbidden, gin.H{"error": "forbidden"})
		return
	}

	var body BodyUpdateTracks
	if err := c.ShouldBindBodyWithJSON(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "bad request"})
		return
	}

	track, err := app.Queries.GetTrackByID(body.TrackID)
	if err != nil || track == nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "track not found"})
		return
	}

	if err := app.Queries.UpdateTrackDeadLink(body.TrackID, body.DeadLink); err != nil {
		log.Printf("Error: HandleAdminUpdateTrack: UpdateTrackDeadLink: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error": "internal server error"})
		return
	}

	// Invalider le cache Redis pour toutes les vues qui contiennent ce track
	app.cacheDelete(cacheKey("tracks", "id", fmt.Sprint(body.TrackID)))
	app.cacheDelete(cacheKey("creators", "tracks", fmt.Sprint(track.CreatorID)))
	app.cacheDelete(cacheKey("collections", "id", fmt.Sprint(track.CollectionID)))
	app.cacheDelete(cacheKey("genre", "id", fmt.Sprint(track.GenreID)))
	app.cacheDeletePattern("tracks:list:*")

	// Mettre à jour le document Meilisearch
	track.IsDeadLink = body.DeadLink
	pk := "ID"
	if _, meiliErr := app.Meili.Index("tracks").UpdateDocuments([]map[string]interface{}{
		{"ID": track.ID, "IsDeadLink": body.DeadLink},
	}, &meilisearch.DocumentOptions{PrimaryKey: &pk}); meiliErr != nil {
		log.Printf("Warning: HandleAdminUpdateTrack: meili update failed: %v\n", meiliErr)
	}

	c.JSON(http.StatusOK, gin.H{"message": "ok"})
}
