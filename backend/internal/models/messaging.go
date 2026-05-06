package models

import "time"

/* ---------------------------------------------------------------------------- */
/* Table channels */
/* ---------------------------------------------------------------------------- */
type Channel struct {
	ID            int64     `gorm:"column:id;primaryKey;autoIncrement"`
	Title         *string   `gorm:"column:title"`
	IsPrivate     bool      `gorm:"column:is_private;not null;default:true"`
	IsIndividual  bool      `gorm:"column:is_individual;not null;default:false"`
	MembersLimit  *int64    `gorm:"column:members_limit"`
	IndivUserLow  *int64    `gorm:"column:indiv_user_low"`
	IndivUserHigh *int64    `gorm:"column:indiv_user_high"`
	CreatedBy     *int64    `gorm:"column:created_by"`
	CreatedAt     time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt     time.Time `gorm:"column:updated_at;autoUpdateTime"`

	IndivLowUser  *User `gorm:"foreignKey:IndivUserLow;references:ID;constraint:OnDelete:CASCADE"`
	IndivHighUser *User `gorm:"foreignKey:IndivUserHigh;references:ID;constraint:OnDelete:CASCADE"`
	CreatorUser   *User `gorm:"foreignKey:CreatedBy;references:ID;constraint:OnDelete:SET NULL"`

	Members  []ChannelMember `gorm:"foreignKey:ChannelID"`
	Messages []Message       `gorm:"foreignKey:ChannelID"`
}

func (Channel) TableName() string { return "channels" }

/* ---------------------------------------------------------------------------- */
/* Table messages */
/* ---------------------------------------------------------------------------- */
type Message struct {
	ID        int64     `gorm:"column:id;primaryKey;autoIncrement"`
	ChannelID int64     `gorm:"column:channel_id;not null"`
	SenderID  *int64    `gorm:"column:sender_id"`
	Content   *string   `gorm:"column:content"`
	CreatedAt time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt time.Time `gorm:"column:updated_at;autoUpdateTime"`

	Channel Channel `gorm:"foreignKey:ChannelID;references:ID;constraint:OnDelete:CASCADE"`
	Sender  *User   `gorm:"foreignKey:SenderID;references:ID;constraint:OnDelete:SET NULL"`
}

func (Message) TableName() string { return "messages" }

/* ---------------------------------------------------------------------------- */
/* channel_members */
/* ---------------------------------------------------------------------------- */
type ChannelMember struct {
	ChannelID         int64     `gorm:"column:channel_id;primaryKey"`
	UserID            int64     `gorm:"column:user_id;primaryKey"`
	RoleName          string    `gorm:"column:role_name;type:text;not null;default:member"`
	LastReadMessageID *int64    `gorm:"column:last_read_message_id"`
	JoinedAt          time.Time `gorm:"column:joined_at;autoCreateTime"`
	UpdatedAt         time.Time `gorm:"column:updated_at;autoUpdateTime"`

	Channel         Channel  `gorm:"foreignKey:ChannelID;references:ID;constraint:OnDelete:CASCADE"`
	User            User     `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE"`
	LastReadMessage *Message `gorm:"foreignKey:LastReadMessageID;references:ID;constraint:OnDelete:SET NULL"`
}

func (ChannelMember) TableName() string { return "channel_members" }
