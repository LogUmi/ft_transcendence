package handler

import (
	"encoding/json"
	"log"
)

type ChatReadPayload struct {
	ChannelID	int64	`json:"channel_id"`
	LastReadID	int64	`json:"last_read_message_id"`
}

func (app *App) WSChatRead(client *Client, message Message) {

	// get and check payload
	var payload ChatReadPayload
	err := json.Unmarshal(message.Payload, &payload)
	if err != nil {
		log.Printf("Error: WSChatRead: Unmarshal: %v\n", err)
		errMsg := "Invalid message format"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	if payload.ChannelID == 0 || payload.LastReadID == 0 {
		errMsg := "Invalid payload"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// check user is member of the channel
	channelMember, err := app.Queries.GetChannelMember(payload.ChannelID, client.userID)
	if err != nil {
		log.Printf("Error: WSChatRead: Queries.GetChannelMember: %v\n", err)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	if channelMember == nil {
		errMsg := "Forbidden"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	// prevent update last_read_msg_id going backward
	if channelMember.LastReadMessageID != nil && *channelMember.LastReadMessageID >= payload.LastReadID {
		client.Send(Response{Type: message.Type, Success: true})
		return
	}

	// update
	channelMember.LastReadMessageID = &payload.LastReadID
	err = app.Queries.SaveRecord(&channelMember)
	if err != nil {
		log.Printf("Error: WSChatRead: Queries.SaveRecord: %v\n", err)
		errMsg := "Internal server error"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}

	client.Send(Response{Type: message.Type, Success: true,})
}