package handler

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func (app *App) HandleGetAlbum(c *gin.Context) {
	id, err := strconv.ParseInt(c.Param("id"), 10, 64)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid album id"})
		return
	}

	key := cacheKey("collections", "id", fmt.Sprint(id))
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	collection, err := app.Queries.GetCollectionByID(id)
	if err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "album not found"})
		return
	}
	tracks, err := app.Queries.GetCollectionTracks(id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch tracks"})
		return
	}

	result, err := json.Marshal(gin.H{
		"album":  collection,
		"tracks": tracks,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, albumCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}

func (app *App) HandleListAlbums(c *gin.Context) {

	key := cacheKey("collections", "list")
	if cached, found := app.cacheGet(key); found {
		log.Printf("cache hit for key=%s", key)
		c.Data(http.StatusOK, "application/json", cached)
		return
	}
	log.Printf("cache miss for key=%s", key)

	collections, err := app.Queries.GetAllCollections()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "cannot fetch albums"})
		return
	}

	result, err := json.Marshal(collections)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "probleme de conversion JSON"})
		return
	}

	app.cacheSet(key, result, albumsListCacheTTL)
	c.Data(http.StatusOK, "application/json", result)
}
