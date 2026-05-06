package handler

type Handler func(client *Client, message Message)

type Router struct {
	handlersMap map[string]Handler
}

func NewRouter() *Router {

	return &Router{
		handlersMap: make(map[string]Handler),
	}
}

func (router *Router) AddHandler(messageType string, handler Handler) {
	_, exists := router.handlersMap[messageType]
	if exists {
		panic("handler already registered for type: " + messageType)
	}
	router.handlersMap[messageType] = handler
}

// GUIDE THE RECEIVED MESSAGE TO THE CORRESPONDING HANDLER
func (router *Router) Route(client *Client, message Message) {

	handler, exist := router.handlersMap[message.Type]
	if !exist {
		errMsg := "Unknown message type"
		client.Send(Response{Type: message.Type, Success: false, Error: &errMsg})
		return
	}
	handler(client, message)
}
