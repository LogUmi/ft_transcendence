package handler

import (
	"encoding/json"
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/meilisearch/meilisearch-go"
)

// recherche les tracks de part leur ID
func (app *App) HandleGetTracks(c *gin.Context) {
	search := c.Query("search")
	trackType := c.Query("type")

	key := cacheKey("tracks", "list", "search="+search, "type="+trackType)
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	request := &meilisearch.SearchRequest{
		Limit: 25000,
	}
	allowed := map[string]bool{"music": true, "podcast": true, "genre": true}
	if trackType != "" && allowed[trackType] {
		request.Filter = "Type = " + trackType
	}

	response, err := app.Meili.Index("tracks").Search(search, request)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	result, err := json.Marshal(response.Hits)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, tracksListCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleGetTrackByID(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.ParseInt(idStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid track id"})
		return
	}

	key := cacheKey("tracks", "id", idStr)
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	track, err := app.Queries.GetTrackByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "track not found"})
		return
	}
	result, err := json.Marshal(track)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, trackCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleGetGenreByID(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.ParseInt(idStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid genre id"})
		return
	}

	key := cacheKey("genre", "id", idStr)
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	genre, tracks, err := app.Queries.GetGenreByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "genre not found"})
		return
	}

	response := gin.H{
		"id":        genre.ID,
		"name":      genre.Name,
		"cover_url": genre.CoverURL,
		"tracks":    tracks,
	}
	result, err := json.Marshal(response)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, trackCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleAdminListTracks(c *gin.Context) {
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
	tracks, err := app.Queries.AdminListTracks()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "erreur lors de la récupération des tracks"})
		return
	}

	c.JSON(http.StatusOK, tracks)
}
