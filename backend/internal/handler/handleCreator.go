package handler

import (
	"encoding/json"
	// "ft_transcendance/backend/internal/models"
	"fmt"
	"github.com/meilisearch/meilisearch-go"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func (app *App) HandleGetCreatorByID(c *gin.Context) {
	idStr := c.Param("id")
	id, err := strconv.ParseInt(idStr, 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid creator id"})
		return
	}
	key := cacheKey("creators", "id", fmt.Sprint(id))
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	creator, err := app.Queries.GetCreatorByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "creator not found"})
		return
	}
	result, err := json.Marshal(creator)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}
	app.cacheSet(key, result, creatorCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleAllCreators(c *gin.Context) {
	search := c.Query("search")

	limit := int64(20)
	if search == "" {
		limit = 10000
	}
	request := &meilisearch.SearchRequest{
		Limit: limit,
	}

	key := cacheKey("creators", "list", "search="+search)
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	response, err := app.Meili.Index("creators").Search(search, request)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	result, err := json.Marshal(response.Hits)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}
	app.cacheSet(key, result, creatorsListCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleGetCreatorTracks(c *gin.Context) {
	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid creator id"})
		return
	}

	key := cacheKey("creators", "tracks", fmt.Sprint(id))
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	tracks, err := app.Queries.GetCreatorTracks(id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch tracks"})
		return
	}
	result, err := json.Marshal(tracks)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}
	app.cacheSet(key, result, creatorsTracksCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleGetCreatorCollections(c *gin.Context) {
	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid creator id"})
		return
	}
	key := cacheKey("creators", "collections", fmt.Sprint(id))
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	collections, err := app.Queries.GetCreatorCollections(id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch collections"})
		return
	}
	result, err := json.Marshal(collections)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}
	app.cacheSet(key, result, creatorAlbumsCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}
