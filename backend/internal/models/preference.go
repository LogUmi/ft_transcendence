package models

import "time"

/* ---------------------------------------------------------------------------- */
/* Table likes */
/* ---------------------------------------------------------------------------- */
type Like struct {
	TrackID int64 `gorm:"column:track_id;primaryKey"`
	UserID  int64 `gorm:"column:user_id;primaryKey"`

	User  User  `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE"`
	Track Track `gorm:"foreignKey:TrackID;references:ID;constraint:OnDelete:CASCADE"`
}

func (Like) TableName() string { return "likes" }

/* ---------------------------------------------------------------------------- */
/* Table friends */
/* ---------------------------------------------------------------------------- */
type Friend struct {
	UserIDLow     int64     `gorm:"column:user_id_low;primaryKey"`
	UserIDHigh    int64     `gorm:"column:user_id_high;primaryKey"`
	RequestStatus string    `gorm:"column:request_status;type:text;not null;default:pending"`
	CreatedBy     int64     `gorm:"column:created_by;not null"`
	CreatedAt     time.Time `gorm:"column:created_at;autoCreateTime"`

	LowUser   User `gorm:"foreignKey:UserIDLow;references:ID;constraint:OnDelete:CASCADE"`
	HighUser  User `gorm:"foreignKey:UserIDHigh;references:ID;constraint:OnDelete:CASCADE"`
	CreatorBy User `gorm:"foreignKey:CreatedBy;references:ID;constraint:OnDelete:CASCADE"`
}

func (Friend) TableName() string { return "friends" }

/* ---------------------------------------------------------------------------- */
/* Table playlists */
/* ---------------------------------------------------------------------------- */
type Playlist struct {
	ID        int64     `gorm:"column:id;primaryKey;autoIncrement"`
	UserID    int64     `gorm:"column:user_id;not null"`
	Title     string    `gorm:"column:title;type:text;not null"`
	CreatedAt time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt time.Time `gorm:"column:updated_at;autoUpdateTime"`

	User     User              `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE"`
	Contents []PlaylistContent `gorm:"foreignKey:PlaylistID"`
}

func (Playlist) TableName() string { return "playlists" }

/* ---------------------------------------------------------------------------- */
/* Table playlist_contents */
/* ---------------------------------------------------------------------------- */
type PlaylistContent struct {
	PlaylistID int64     `gorm:"column:playlist_id;primaryKey"`
	TrackID    int64     `gorm:"column:track_id;primaryKey"`
	Position   int64     `gorm:"column:position;not null"`
	CreatedAt  time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt  time.Time `gorm:"column:updated_at;autoUpdateTime"`

	Playlist Playlist `gorm:"foreignKey:PlaylistID;references:ID;constraint:OnDelete:CASCADE"`
	Track    Track    `gorm:"foreignKey:TrackID;references:ID;constraint:OnDelete:CASCADE"`
}

func (PlaylistContent) TableName() string { return "playlist_contents" }

/* ---------------------------------------------------------------------------- */
/* Table queue_items */
/* ---------------------------------------------------------------------------- */
type QueueItem struct {
	ID       int64     `gorm:"column:id;primaryKey;autoIncrement"`
	UserID   int64     `gorm:"column:user_id;not null"`
	TrackID  int64     `gorm:"column:track_id;not null"`
	Position int64     `gorm:"column:position;not null"`
	AddedAt  time.Time `gorm:"column:added_at;autoCreateTime"`

	User  User  `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE"`
	Track Track `gorm:"foreignKey:TrackID;references:ID;constraint:OnDelete:CASCADE"`
}

func (QueueItem) TableName() string { return "queue_items" }
