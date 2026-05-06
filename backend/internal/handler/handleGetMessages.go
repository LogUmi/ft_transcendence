package handler

import (
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"
	"strconv"
	"time"
	"github.com/gin-gonic/gin"
)

const NB_MSG int = 10

type GetMessageDTO struct {
	ID			int64		`json:"id"`
	Content		string		`json:"content"`
	SenderID	int64		`json:"sender_id"`
	CreatedAt	time.Time	`json:"created_at"`
}

type GetMessageResponse struct {
	Messages			[]GetMessageDTO	`json:"messages"`
	LastReadMessageID	*int64			`json:"last_read_message_id"`
}

func (app *App) HandleGetMessages(c *gin.Context) {

	rawUser, exist := c.Get("user")
	if !exist || rawUser.(models.User).ID == 0 || rawUser.(models.User).IsActive == false {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "Unauthorized"})
		return
	}
	user := rawUser.(models.User)

	channelIDStr := c.Param("channel_id")
	channelID, err := strconv.ParseInt(channelIDStr, 10, 64)
	if err != nil {
		log.Printf("Error: HandleGetMessages: strconv.ParsInt: %v\n", err)
		c.JSON(http.StatusBadRequest, gin.H{"error":"invalid id"})
		return
	}

	beforeStr := c.Query("before")
	var beforeID int64 = 0
	if beforeStr != "" {
		parsed, err := strconv.ParseInt(beforeStr, 10, 64)
		if err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "invalid before parameter"})
			return
		}
		beforeID = parsed
	}
	
	if channelID == 0 {
		channelID += 1
	}
	
	var last_read_message_id *int64
	// CHECK USER IS EFFECTIVELY MEMBER OF THAT CHANNEL
	channel, err := app.Queries.GetChannelMember(channelID, user.ID)
	if err != nil {
		log.Printf("Error: HandleGetMessages: GetChannelMember: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error":"internal server error"})
		return
	}
	if channel == nil {
		c.JSON(http.StatusForbidden, gin.H{"error":"Forbidden"})
		return
	}
	last_read_message_id = channel.LastReadMessageID

	messages, err := app.Queries.GetChannelMessages(channelID, NB_MSG, beforeID)
	if err != nil {
		log.Printf("Error: HandleGetMessages: GetChannelMessages: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error":"internal server error"})
		return
	}

	DTO := make([]GetMessageDTO, 0, len(messages))
	for _, msg := range messages {
		DTO = append(DTO, GetMessageDTO{
			ID: msg.ID,
			Content: *msg.Content,
			SenderID: *msg.SenderID,
			CreatedAt: msg.CreatedAt,
		})
	}

	c.JSON(http.StatusOK, GetMessageResponse{
		Messages: DTO,
		LastReadMessageID: last_read_message_id,
	})
}
