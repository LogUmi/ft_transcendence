package handler

import (
	"ft_transcendance/backend/internal/models"
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
)

type ChannelListItem struct {
	ChannelID		int64	`json:"channel_id"`
	IsGeneral		bool	`json:"is_general"`
	OtherUserID		*int64	`json:"other_user_id"`
	OtherUserName	*string	`json:"other_user_name"`
	OtherAvatarURL	*string	`json:"other_avatar_url"`
}

func (app *App) HandleGetChannels(c *gin.Context) {

	rawUser, exist := c.Get("user")
	if exist == false {
		c.JSON(http.StatusUnauthorized, gin.H{"error":"unauthorized"})
		return
	}
	user := rawUser.(models.User)

	channels, err := app.Queries.GetChannels(user.ID)
	if err != nil {
		log.Printf("Error: HandleGetChannels: Queries.GetChannels: %v\n", err)
		c.JSON(http.StatusInternalServerError, gin.H{"error":"internal server error"})
		return
	}
	
	response := make([]ChannelListItem, 0, len(channels))
	for _, channel := range channels {

		item := ChannelListItem{
			ChannelID: channel.ID,
			IsGeneral: !channel.IsIndividual,
		}

		if channel.IsIndividual == true {

			if *channel.IndivUserHigh == user.ID {
				item.OtherUserID = channel.IndivUserLow
			} else {
				item.OtherUserID = channel.IndivUserHigh
			}

			otherUser, err := app.Queries.GetValidUserByID(*item.OtherUserID)
			if err != nil {
				continue
			}
			item.OtherUserName = &otherUser.Username
			item.OtherAvatarURL = &otherUser.AvatarURL
		}
		response = append(response, item)
	}

	c.JSON(http.StatusOK, response)
}