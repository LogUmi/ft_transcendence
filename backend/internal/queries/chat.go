package queries

import (
	"errors"
	"ft_transcendance/backend/internal/models"
	"gorm.io/gorm"
)

func (r *Queries) SearchOrCreatePrivateChannel(senderID int64, receiverID int64) (*models.Channel, error) {

	low, high := orderIDs(senderID, receiverID)

	var members_limit int64 = 2
	var channel models.Channel

	// TO AVOID CASE WHERE CHANNEL IS CREATED BUT CHANNEL_MEMBERS FAIL
	err := r.QueriesDB.Transaction(func(tx *gorm.DB) error {
		// SEARCH OR CREATE THE CHANNEL RECORD
		query := tx.
			Where(models.Channel{
				IsIndividual:  true,
				IndivUserLow:  &low,
				IndivUserHigh: &high,
			}).
			Attrs(models.Channel{
				Title:        nil,
				MembersLimit: &members_limit,
				CreatedBy:    &senderID,
			}).
			FirstOrCreate(&channel)
		if query.Error != nil {
			return query.Error
		}
		// CREATE 2 CHANNEL_MEMBERS RECORDS
		if query.RowsAffected == 1 {
			err := tx.Create(&models.ChannelMember{
				ChannelID:         channel.ID,
				UserID:            senderID,
				LastReadMessageID: nil,
			}).Error
			if err != nil {
				return err
			}
			err = tx.Create(&models.ChannelMember{
				ChannelID:         channel.ID,
				UserID:            receiverID,
				LastReadMessageID: nil,
			}).Error
			if err != nil {
				return err
			}
		}

		return nil // all well done
	})
	if err != nil {
		return nil, err
	}

	return &channel, nil
}

func (r *Queries) GetChannels(userID int64) ([]models.Channel, error) {

	channelMembers := []models.ChannelMember{}
	err := r.QueriesDB.
		Where("user_id = ?", userID).
		Preload("Channel").
		Find(&channelMembers).Error
	if err != nil {
		return nil, err
	}

	channels := make([]models.Channel, 0, len(channelMembers))
	for _, m := range channelMembers {
		channels = append(channels, m.Channel)
	}

	return channels, nil
}

func (r *Queries) GetChannelMember(channelID, userID int64) (*models.ChannelMember, error) {

	var channelMember models.ChannelMember
	query := r.QueriesDB.Where("channel_id = ? AND user_id = ?", channelID, userID).First(&channelMember)
	if query.Error != nil {
		if errors.Is(query.Error, gorm.ErrRecordNotFound) {
			return nil, nil
		}
		return nil, query.Error
	}
	return &channelMember, nil 
}

func (r *Queries) GetChannelMessages(channelID int64, limit int, beforeID int64) ([]models.Message, error) {

    messages := make([]models.Message, 0, limit)
    query := r.QueriesDB.Where("channel_id = ?", channelID)
    if beforeID > 0 {
        query = query.Where("id < ?", beforeID)
    }
    err := query.Order("created_at DESC").Limit(limit).Find(&messages).Error
    return messages, err
}