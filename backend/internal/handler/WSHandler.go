package handler

import (
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"os"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
)

var upgrader = websocket.Upgrader{
	ReadBufferSize:  512,
	WriteBufferSize: 512,
	CheckOrigin: func(r *http.Request) bool {
		return r.Header.Get("Origin") == os.Getenv("FRONTEND_URL")
	},
}

func (app *App) HandleWebsocket(c *gin.Context, hub *Hub, router *Router) {

	// GET USER
	user, exists := c.Get("user")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"Error": "unauthorized"})
		return
	}
	currentUser := user.(models.User)

	conn, err := upgrader.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		log.Printf("Error: HandleWebsocket(): %v\n", err)
		return
	}

	newClient := &Client{
		hub:    hub,
		conn:   conn,
		send:   make(chan []byte, 256),
		userID: currentUser.ID,
		router: router,
	}

	// RUN THE CLIENT
	hub.register <- newClient
	go newClient.WritePump()
	go newClient.ReadPump()
}
