package models

import "time"

/* ---------------------------------------------------------------------------- */
/* View last_release_tracks */
/* ---------------------------------------------------------------------------- */
type LastReleaseTrack struct {
	TrackID        int64      `gorm:"column:track_id;primaryKey"`
	ReleaseDate    *time.Time `gorm:"column:release_date"`
	Type           string     `gorm:"column:type"`
	Title          string     `gorm:"column:title"`
	CreatorID      int64      `gorm:"column:creator_id"`
	CreatorName    string     `gorm:"column:creator_name"`
	CollectionID   int64      `gorm:"column:collection_id"`
	CollectionName string     `gorm:"column:collection_name"`
	GenreID        int64      `gorm:"column:genre_id"`
	GenreName      string     `gorm:"column:genre_name"`
	AudioURL       string     `gorm:"column:audio_url"`
	CoverURL       *string    `gorm:"column:cover_url"`
}

func (LastReleaseTrack) TableName() string { return "last_release_tracks" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_tracks_site */
/* ---------------------------------------------------------------------------- */
type MostListenedTrackSite struct {
	TrackID     int64   `gorm:"column:track_id;primaryKey"`
	Type        string  `gorm:"column:type;primaryKey"`
	Title       string  `gorm:"column:title"`
	CreatorID   int64   `gorm:"column:creator_id"`
	CreatorName string  `gorm:"column:creator_name"`
	AudioURL    string  `gorm:"column:audio_url"`
	CoverURL    *string `gorm:"column:cover_url"`
	TotalTime   int64   `gorm:"column:total_time"`
}

func (MostListenedTrackSite) TableName() string { return "most_listened_tracks_site" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_collections_site */
/* ---------------------------------------------------------------------------- */
type MostListenedCollectionSite struct {
	CollectionID        int64   `gorm:"column:collection_id;primaryKey"`
	CollectionName      string  `gorm:"column:collection_name"`
	CollectionCoverURL  *string `gorm:"column:collection_cover_url"`
	Type                string  `gorm:"column:type;primaryKey"`
	TotalCollectionTime int64   `gorm:"column:total_collection_time"`
}

func (MostListenedCollectionSite) TableName() string { return "most_listened_collections_site" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_creators_site */
/* ---------------------------------------------------------------------------- */
type MostListenedCreatorSite struct {
	CreatorID        int64   `gorm:"column:creator_id;primaryKey"`
	CreatorName      string  `gorm:"column:creator_name"`
	CreatorCoverURL  *string `gorm:"column:creator_cover_url"`
	Type             string  `gorm:"column:type;primaryKey"`
	TotalCreatorTime int64   `gorm:"column:total_creator_time"`
}

func (MostListenedCreatorSite) TableName() string { return "most_listened_creators_site" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_genres_site */
/* ---------------------------------------------------------------------------- */
type MostListenedGenreSite struct {
	GenreID        int64   `gorm:"column:genre_id;primaryKey"`
	GenreName      string  `gorm:"column:genre_name"`
	GenreCoverURL  *string `gorm:"column:genre_cover_url"`
	Type           string  `gorm:"column:type;primaryKey"`
	TotalGenreTime int64   `gorm:"column:total_genre_time"`
}

func (MostListenedGenreSite) TableName() string { return "most_listened_genres_site" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_tracks_user */
/* ---------------------------------------------------------------------------- */
type MostListenedTrackUser struct {
	UserID      int64   `gorm:"column:user_id;primaryKey"`
	TrackID     int64   `gorm:"column:track_id;primaryKey"`
	Type        string  `gorm:"column:type;primaryKey"`
	Title       string  `gorm:"column:title"`
	CreatorID   int64   `gorm:"column:creator_id"`
	CreatorName string  `gorm:"column:creator_name"`
	AudioURL    string  `gorm:"column:audio_url"`
	CoverURL    *string `gorm:"column:cover_url"`
	TotalTime   int64   `gorm:"column:total_time"`
}

func (MostListenedTrackUser) TableName() string { return "most_listened_tracks_user" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_collections_user */
/* ---------------------------------------------------------------------------- */
type MostListenedCollectionUser struct {
	CollectionID        int64   `gorm:"column:collection_id;primaryKey"`
	CollectionName      string  `gorm:"column:collection_name"`
	CollectionCoverURL  *string `gorm:"column:collection_cover_url"`
	Type                string  `gorm:"column:type;primaryKey"`
	UserID              int64   `gorm:"column:user_id;primaryKey"`
	TotalCollectionTime int64   `gorm:"column:total_collection_time"`
}

func (MostListenedCollectionUser) TableName() string { return "most_listened_collections_user" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_creators_user */
/* ---------------------------------------------------------------------------- */
type MostListenedCreatorUser struct {
	CreatorID        int64   `gorm:"column:creator_id;primaryKey"`
	CreatorName      string  `gorm:"column:creator_name"`
	CreatorCoverURL  *string `gorm:"column:creator_cover_url"`
	Type             string  `gorm:"column:type;primaryKey"`
	UserID           int64   `gorm:"column:user_id;primaryKey"`
	TotalCreatorTime int64   `gorm:"column:total_creator_time"`
}

func (MostListenedCreatorUser) TableName() string { return "most_listened_creators_user" }

/* ---------------------------------------------------------------------------- */
/* View most_listened_genres_user */
/* ---------------------------------------------------------------------------- */
type MostListenedGenreUser struct {
	GenreID        int64   `gorm:"column:genre_id;primaryKey"`
	GenreName      string  `gorm:"column:genre_name"`
	GenreCoverURL  *string `gorm:"column:genre_cover_url"`
	Type           string  `gorm:"column:type;primaryKey"`
	UserID         int64   `gorm:"column:user_id;primaryKey"`
	TotalGenreTime int64   `gorm:"column:total_genre_time"`
}

func (MostListenedGenreUser) TableName() string { return "most_listened_genres_user" }
