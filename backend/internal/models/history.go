package models

import "time"

/* ---------------------------------------------------------------------------- */
/* Table history */
/* ---------------------------------------------------------------------------- */
type History struct {
	UserID               int64      `gorm:"column:user_id;primaryKey"`
	TrackID              int64      `gorm:"column:track_id;primaryKey"`
	LastStartedAt        *time.Time `gorm:"column:last_started_at"`
	LastEndedAt          *time.Time `gorm:"column:last_ended_at"`
	LastPositionSeconds  int64      `gorm:"column:last_position_seconds;not null;default:0"`
	LastSecondsListened  int64      `gorm:"column:last_seconds_listened;not null;default:0"`
	PlayCount            int32      `gorm:"column:play_count;not null;default:0"`
	TotalSecondsListened int64      `gorm:"column:total_seconds_listened;not null;default:0"`
	LastCompleted        bool       `gorm:"column:last_completed;not null;default:false"`
	LastSkipped          bool       `gorm:"column:last_skipped;not null;default:false"`
	CompletedCount       int32      `gorm:"column:completed_count;not null;default:0"`
	SkippedCount         int32      `gorm:"column:skipped_count;not null;default:0"`
	CreatedAt            time.Time  `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt            time.Time  `gorm:"column:updated_at;autoUpdateTime"`

	User  User  `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE" json:"-"`
	Track Track `gorm:"foreignKey:TrackID;references:ID;constraint:OnDelete:CASCADE" json:"-"`
}

func (History) TableName() string { return "histories" }

/* ---------------------------------------------------------------------------- */
/* Table history_logs */
/* ---------------------------------------------------------------------------- */
type HistoryLog struct {
	ID                  int64      `gorm:"column:id;primaryKey;autoIncrement"`
	UserID              int64      `gorm:"column:user_id;not null"`
	TrackID             int64      `gorm:"column:track_id;not null"`
	StartedAt           *time.Time `gorm:"column:started_at"`
	EndedAt             *time.Time `gorm:"column:ended_at"`
	LastPositionSeconds int64      `gorm:"column:last_position_seconds;not null;default:0"`
	LastSecondsListened int64      `gorm:"column:last_seconds_listened;not null;default:0"`
	Completed           bool       `gorm:"column:completed;not null;default:false"`
	Skipped             bool       `gorm:"column:skipped;not null;default:false"`
	CreatedAt           time.Time  `gorm:"column:created_at;autoCreateTime"`

	User  User  `gorm:"foreignKey:UserID;references:ID;constraint:OnDelete:CASCADE" json:"-"`
	Track Track `gorm:"foreignKey:TrackID;references:ID;constraint:OnDelete:CASCADE"`
}

func (HistoryLog) TableName() string { return "history_logs" }

/* ---------------------------------------------------------------------------- */
/* HistoryUpsertInput is for HandleAddHistory and queries.UpsertHistory use */
/* ---------------------------------------------------------------------------- */
type HistoryUpsertInput struct {
	TrackID             int64      `json:"TrackID"`
	StartedAt           *time.Time `json:"StartedAt"`
	EndedAt             *time.Time `json:"EndedAt"`
	LastPositionSeconds *float64   `json:"LastPositionSeconds"`
	LastSecondsListened *float64   `json:"LastSecondsListened"`
	Completed           *bool      `json:"Completed"`
	Skipped             *bool      `json:"Skipped"`
}
