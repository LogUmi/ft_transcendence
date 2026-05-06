package handler

import (
	"encoding/json"
	"log"
)

type FriendStatusPayload struct {
	UserID   int64 `json:"user_id"`
	IsOnline bool  `json:"is_online"`
}

type OnlineFriendsListPayload struct {
	OnlineFriendIDs []int64 `json:"online_friend_ids"`
}

// notify friends user's status has changed
func (hub *Hub) NotifyFriendsOfStatusChange(userID int64, isOnline bool) {

	// get granted friend list
	friends, err := hub.Queries.GetFriendsUserTableByUserID(userID, "granted")
	if err != nil {
		log.Printf("Error: notifyFriendsOfStatusChange: GetFriendsUserTableByUserID: %v\n", err)
		return
	}

	payload := FriendStatusPayload{
		UserID:   userID,
		IsOnline: isOnline,
	}
	response := Response{
		Type:    "friend.status",
		Success: true,
		Payload: payload,
	}

	rawResponse, err := json.Marshal(response)
	if err != nil {
		return
	}

	// send to all online friends
	for _, friend := range friends {
		friendClient, online := hub.clientsMap[friend.ID]
		if online {
			select {
			case friendClient.send <- rawResponse:
			default:
			}
		}
	}
}

// get online friends
func (hub *Hub) GetOnlineFriendsList(client *Client) {

	friends, err := hub.Queries.GetFriendsUserTableByUserID(client.userID, "granted")
	if err != nil {
		log.Printf("Error: GetOnlineFriendsList: GetFriendsUserTableByUserID: %v\n", err)
		return
	}

	onlineFriendIDs := make([]int64, 0)
	for _, friend := range friends {
		_, online := hub.clientsMap[friend.ID]
		if online {
			onlineFriendIDs = append(onlineFriendIDs, friend.ID)
		}
	}

	response := Response{
		Type:    "friend.online.list",
		Success: true,
		Payload: OnlineFriendsListPayload{OnlineFriendIDs: onlineFriendIDs},
	}
	client.Send(response)
}
