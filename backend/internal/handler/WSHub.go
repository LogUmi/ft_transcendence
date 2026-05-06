package handler

import "ft_transcendance/backend/internal/queries"

type Hub struct {
	clientsMap	map[int64]*Client
	register	chan *Client
	unregister	chan *Client
	Queries		*queries.Queries
}

func NewHub(Queries *queries.Queries) *Hub {

	return &Hub{
		clientsMap: make(map[int64]*Client),
		register:   make(chan *Client),
		unregister: make(chan *Client),
		Queries:	Queries,
	}
}

func (hub *Hub) SendToUser(userID int64, response Response) {
	client, online := hub.clientsMap[userID]
	if online {
		client.Send(response)
	}
}

func (hub *Hub) Run() {

	for {
		select {
		case client := <-hub.register:
			hub.clientsMap[client.userID] = client
			hub.NotifyFriendsOfStatusChange(client.userID, true)
			hub.GetOnlineFriendsList(client)
		case client := <-hub.unregister:
			if hub.clientsMap[client.userID] != nil {
				delete(hub.clientsMap, client.userID)
				close(client.send)
				hub.NotifyFriendsOfStatusChange(client.userID, false)
			}
		}
	}
}
