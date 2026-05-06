package handler

import (
	"encoding/json"
	"log"

	"github.com/gorilla/websocket"
)

type Client struct {
	send   chan []byte
	router *Router
	hub    *Hub
	userID int64
	conn   *websocket.Conn
}

// SEND TO FRONTEND
func (c *Client) WritePump() {

	defer func() { c.hub.unregister <- c }()

	for response := range c.send {
		err := c.conn.WriteMessage(websocket.TextMessage, response)
		if err != nil {
			log.Printf("Error: Client.WritePump(): WriteMessage(): %v\n", err)
			return
		}

	}
}

// READ WHAT FRONTEND SEND US
func (c *Client) ReadPump() {

	defer func() { c.hub.unregister <- c }()

	for {
		// READ ON WEBSOCKET CONNEXION
		msgType, rawMessage, err := c.conn.ReadMessage()
		if err != nil {
			if websocket.IsUnexpectedCloseError(err, websocket.CloseGoingAway, 
				websocket.CloseNormalClosure, websocket.CloseNoStatusReceived) {
				log.Printf("Error: Client.ReadPump(): ReadMessage(): %v\n", err)
			}
			return // Client has disconnected
		} else if msgType != websocket.TextMessage {
			log.Println("Error: Client.ReadPump(): ReadMessage(): messageType != TextMessage")
			return
		}

		// SERIALISE THE JSON RECEIVED TO A MESSAGE STRUCT
		var message Message
		err2 := json.Unmarshal(rawMessage, &message)
		if err2 != nil {
			log.Printf("Error: Client.ReadPump(): json.Unmarshal(): %v\n", err2)
			errMsg := "Invalid message format"
			c.Send(Response{Type: "error", Success: false, Error: &errMsg})
			continue // A wrong json have been received
		}

		// GUIDE THE MESSAGE TO THE CORRESPONDING HANDLER
		c.router.Route(c, message)
	}
}

// TO SEND CORRECTLY OUR RESPONSE TO FRONTEND
func (c *Client) Send(response Response) {

	// catch the panic in case channel have been closed and something
	// have been send on it just after his closing
	// so we avoid server crashing
	defer func() {
		if r := recover(); r != nil {
			log.Printf("Recovered in Send(): %v\n", r)
		}
	}()

	// SERIALIZE OUR GO RESPONSE STRUCT TO JSON ( []BYTE )
	rawResponse, err := json.Marshal(response)
	if err != nil {
		log.Printf("Error: Client.Send(): json.Marshal(): %v\n", err)
		errMsg := []byte(`{"type": "error", "success": false, "error": "internal server error"}`)
		c.send <- errMsg
		return
	}

	// NOW READY, PUSH IT TO WRITE PUMP SEND IT TO FRONT
	c.send <- rawResponse
}

func (c *Client) Broadcast(response Response) {

	defer func() {
		if r := recover(); r != nil {
			log.Printf("Recovered in Broadcast(): %v\n", r)
		}
	}()

	rawResponse, err := json.Marshal(response)
	if err != nil {
		log.Printf("Error: Client.Send(): json.Marshal(): %v\n", err)
		errMsg := []byte(`{"type": "error", "success": false, "error": "internal server error"}`)
		c.send <- errMsg
		return
	}
	
	for userID, client := range c.hub.clientsMap {

		if userID == c.userID {
			continue
		}
		select {
		case client.send <- rawResponse:
		default:
			log.Printf("Warning: client %d send chan is full, message dropped\n", client.userID)
		}
	}
}