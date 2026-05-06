package models

import "time"

/* ---------------------------------------------------------------------------- */
/* Table users */
/* ---------------------------------------------------------------------------- */
type User struct {
	ID             int64     `gorm:"column:id;primaryKey;autoIncrement"`
	Email          string    `gorm:"column:email;type:citext;not null"`
	Username       string    `gorm:"column:username;type:text;not null"`
	GoogleID       *string   `gorm:"column:google_id;type:text" json:"-"`
	AuthType       string    `gorm:"column:authentification_type;type:text;not null;default:'mail'"`
	PasswordHash   *string   `gorm:"column:password_hash;type:text" json:"-"`
	RoleName       string    `gorm:"column:role_name;type:text;not null;default:user"`
	AvatarURL      string    `gorm:"column:avatar_url;type:text;not null;default:/assets/avatars/default.jpg"`
	PlaylistLoop   bool      `gorm:"column:playlist_loop;not null;default:true"`
	PlaylistRandom bool      `gorm:"column:playlist_random;not null;default:false"`
	QueuePosition  *int64    `gorm:"column:queue_position"`
	IsActive       bool      `gorm:"column:is_active;not null;default:true"`
	CreatedAt      time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt      time.Time `gorm:"column:updated_at;autoUpdateTime"`

	/* Foreign keys */
	Playlists   []Playlist   `gorm:"foreignKey:UserID"`
	QueueItems  []QueueItem  `gorm:"foreignKey:UserID"`
	Likes       []Like       `gorm:"foreignKey:UserID"`
	Histories   []History    `gorm:"foreignKey:UserID"`
	HistoryLogs []HistoryLog `gorm:"foreignKey:UserID"`
}

func (User) TableName() string { return "users" }

// -------------------------
// (Optionnel) Helpers GORM
// -------------------------

// Si tu veux empêcher tout AutoMigrate accidentel, tu peux centraliser la DB init ailleurs.
// Ici juste un rappel : migrations = vérité.
//var _ *gorm.DB
