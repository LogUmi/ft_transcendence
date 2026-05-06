package handler

import (
	"encoding/json"
	"ft_transcendance/backend/internal/models"
	"log"
	"time"
)

const CHANNEL_GENERAL_ID int64 = 1

type ChatSendGeneralPayload struct {
	Content string `json:"content"`
}

type ChatReceiveGeneralPayload struct {
	MessageID int64     `json:"message_id"`
	SenderID  int64     `json:"sender_id"`
	Content   string    `json:"content"`
	CreatedAt time.Time `json:"created_at"`
}

type ChatSendGeneralConfirmPayload struct {
	MessageID int64     `json:"message_id"`
	CreatedAt time.Time `json:"created_at"`
}

func (app *App) WSChatSendGeneral(client *Client, message Message) {

	// get payload
	var payload ChatSendGeneralPayload
	err := json.Unmarshal(message.Payload, &payload)
	if err != nil {
		log.Printf("Error: WSChatSendGeneral(): json.Unmarshal(): %v\n", err)
		errMsg := "Invalid message format"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	if payload.Content == "" {
		log.Println("Error: WSChatSendGeneral(): Invalid message data")
		errMsg := "Invalid message data"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// record msg into db
	messageRecord := &models.Message{
		SenderID:  &client.userID,
		Content:   &payload.Content,
		ChannelID: CHANNEL_GENERAL_ID,
	}
	err2 := app.Queries.CreateNewRecord(messageRecord)
	if err2 != nil {
		log.Printf("Error: WSChatSendGeneral(): Queries.CreateNewRecord(): %v\n", err2)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// send to all clients
	receivePayload := ChatReceiveGeneralPayload{
		MessageID: messageRecord.ID,
		SenderID:  *messageRecord.SenderID,
		Content:   *messageRecord.Content,
		CreatedAt: messageRecord.CreatedAt,
	}
	client.Broadcast(Response{
		Type:    "chat.message.general",
		Success: true,
		Error:   nil,
		Payload: &receivePayload,
	})

	// send a confirmation to our client it's well done
	client.Send(Response{
		Type:    message.Type,
		Success: true,
		Payload: ChatSendGeneralConfirmPayload{
			MessageID: messageRecord.ID,
			CreatedAt: messageRecord.CreatedAt,
		},
	})
}
