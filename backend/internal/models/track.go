package models

import "time"

/* ---------------------------------------------------------------------------- */
/* Table creators */
/* ---------------------------------------------------------------------------- */
type Creator struct {
	ID        int64     `gorm:"column:id;primaryKey;autoIncrement"`
	Name      string    `gorm:"column:name;type:citext;not null"`
	CoverURL  *string   `gorm:"column:cover_url"`
	CreatedAt time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt time.Time `gorm:"column:updated_at;autoUpdateTime"`
}

func (Creator) TableName() string { return "creators" }

/* ---------------------------------------------------------------------------- */
/* Table genres */
/* ---------------------------------------------------------------------------- */
type Genre struct {
	ID          int64     `gorm:"column:id;primaryKey;autoIncrement"`
	Name        string    `gorm:"column:name;type:citext;not null"`
	ParentName  *string   `gorm:"column:parent_name;type:citext;null;default:null"`
	RootGenre   string    `gorm:"column:root_genre;type:citext;not null"`
	BroadFamily string    `gorm:"column:broad_family;type:citext;not null"`
	IsAmbiguous bool      `gorm:"column:is_ambiguous;type:boolean; not null;default:false"`
	CoverURL    *string   `gorm:"column:cover_url"`
	CreatedAt   time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt   time.Time `gorm:"column:updated_at;autoUpdateTime"`
}

func (Genre) TableName() string { return "genres" }

/* ---------------------------------------------------------------------------- */
/* Table collections */
/* ---------------------------------------------------------------------------- */
type Collection struct {
	ID        int64     `gorm:"column:id;primaryKey;autoIncrement"`
	Name      string    `gorm:"column:name;type:citext;not null"`
	CoverURL  *string   `gorm:"column:cover_url"`
	CreatedAt time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt time.Time `gorm:"column:updated_at;autoUpdateTime"`
}

func (Collection) TableName() string { return "collections" }

/* ---------------------------------------------------------------------------- */
/* Table tracks */
/* ---------------------------------------------------------------------------- */
type Track struct {
	ID              int64      `gorm:"column:id;primaryKey;autoIncrement"`
	Type            string     `gorm:"column:type;type:text;not null;default:music"`
	Title           string     `gorm:"column:title;type:citext;not null"`
	DurationSeconds int32      `gorm:"column:duration_seconds;not null"`
	ReleaseDate     *time.Time `gorm:"column:release_date"` // date -> time.Time (date only), nullable
	CreatorID       int64      `gorm:"column:creator_id;not null;default:1"`
	GenreID         int64      `gorm:"column:genre_id;not null;default:1"`
	CollectionID    int64      `gorm:"column:collection_id;not null;default:1"`
	AudioURL        string     `gorm:"column:audio_url;type:text;not null"`
	CoverURL        *string    `gorm:"column:cover_url;type:text;null"`
	SourceURL       *string    `gorm:"column:source_url;type:text;null"`
	LicenseCode     *string    `gorm:"column:license_code;type:text;null"`
	AttributionText *string    `gorm:"column:attribution_text;type:text;null"`
	IsDeadLink      bool       `gorm:"column:is_dead_link;type:boolean;not null;default:false"`
	CreatedAt       time.Time  `gorm:"column:created_at;autoCreateTime" `
	UpdatedAt       time.Time  `gorm:"column:updated_at;autoUpdateTime" `

	/* References */
	Creator    Creator    `gorm:"foreignKey:CreatorID;references:ID;constraint:OnDelete:SET DEFAULT"`
	Genre      Genre      `gorm:"foreignKey:GenreID;references:ID;constraint:OnDelete:SET DEFAULT"`
	Collection Collection `gorm:"foreignKey:CollectionID;references:ID;constraint:OnDelete:SET DEFAULT"`
}

func (Track) TableName() string { return "tracks" }
