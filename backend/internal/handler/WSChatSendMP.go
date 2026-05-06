package handler

import (
	"encoding/json"
	"ft_transcendance/backend/internal/models"
	"log"
	"time"
)

// USER SEND A MSG
type ChatSendMpPayload struct {
	ReceiverID int64  `json:"room_id"`
	Content    string `json:"content"`
}

// RECEIVER RECEIVE THE MSG
type ChatReceiveMpPayload struct {
	MessageID int64     `json:"message_id"`
	ChannelID int64     `json:"room_id"`
	SenderID  int64     `json:"sender_id"`
	Content   string    `json:"content"`
	CreatedAt time.Time `json:"created_at"`
}

// ONCE BACK TREAT USER'S MSG, SEND AN ACK TO HIS FRONT
type ChatSendMpConfirmPayload struct {
	MessageID int64     `json:"message_id"`
	ChannelID int64     `json:"room_id"`
	CreatedAt time.Time `json:"created_at"`
}

func (app *App) WSChatSendMP(client *Client, message Message) {

	// SERIALIZE THE PAYLOAD INTO A GO STRUCT
	var payload ChatSendMpPayload
	err := json.Unmarshal(message.Payload, &payload)
	if err != nil {
		log.Printf("Error: WSChatSendMP(): json.Unmarshal(): %v\n", err)
		errMsg := "Invalid message format"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// CHECKS
	if payload.ReceiverID == 0 || payload.ReceiverID == client.userID || payload.Content == "" {
		log.Println("Error: WSChatSendMP(): Invalid message data")
		errMsg := "Invalid message data"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	receiver, err := app.Queries.GetUserByID(payload.ReceiverID)
	if err != nil {
		log.Printf("Error: WSChatSendMP: GetUserByID (on payload.ReceiverID): %v\n", err)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	if receiver.IsActive == false {
		errMsg := "Requested user don't exist"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	
	// CHECK IF USER'S ALLOWED TO MP TARGET (BLOCKED ?)
	allowed, reason, err := app.CanSendMP(client.userID, payload.ReceiverID)
	if err != nil {
		log.Printf("Error: WSChatSendMP(): CanSendMP(): %v\n", err)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	if allowed == false {
		if reason != nil {
			client.Send(Response{Type: message.Type, Success: false, Error: reason})
			return
		}
		errMsg := "Not allowed"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// GET RECEIVER'S CHANNEL
	receiverChannel, err := app.Queries.SearchOrCreatePrivateChannel(client.userID, payload.ReceiverID)
	if err != nil {
		log.Printf("Error: WSChatSendMP(): Queries.SearchOrCreatePrivateChannel(): %v\n", err)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// CREATE MESSAGE INTO DB
	messageRecord := &models.Message{
		ChannelID: receiverChannel.ID,
		SenderID:  &client.userID,
		Content:   &payload.Content,
	}
	err2 := app.Queries.CreateNewRecord(messageRecord)
	if err2 != nil {
		log.Printf("Error: WSChatSendMP(): Queries.CreateNewRecord(): %v\n", err2)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// SEND MSG TO RECEIVER
	receiverClient, online := client.hub.clientsMap[payload.ReceiverID]
	if online {
		receiverPayload := ChatReceiveMpPayload{
			MessageID: messageRecord.ID,
			ChannelID: receiverChannel.ID,
			SenderID:  client.userID,
			Content:   payload.Content,
			CreatedAt: messageRecord.CreatedAt,
		}
		receiverClient.Send(Response{
			Type:    "chat.receive.mp",
			Success: true,
			Payload: receiverPayload,
		})
	}

	// SEND A ACK
	client.Send(Response{
		Type:    message.Type,
		Success: true,
		Payload: ChatSendMpConfirmPayload{
			MessageID: messageRecord.ID,
			ChannelID: receiverChannel.ID,
			CreatedAt: messageRecord.CreatedAt,
		},
	})
}


func (app *App) CanSendMP(userID, targetID int64) (bool, *string, error) {

    friendship, err := app.Queries.GetFriendshipBetween(userID, targetID)
    if err != nil {
        return false, nil, err
    }

    if friendship == nil {
        reason := "You must be friends to send a message"
        return false, &reason, nil
    }

    if friendship.RequestStatus == "blocked" {
        reason := "This user is blocked"
        return false, &reason, nil
    }

    if friendship.RequestStatus != "granted" {
        reason := "Friend request not yet accepted"
        return false, &reason, nil
    }

    return true, nil, nil
}
