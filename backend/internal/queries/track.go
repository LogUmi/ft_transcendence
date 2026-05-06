package queries

import (
	"ft_transcendance/backend/internal/models"
)

type adminListTrack struct {
	ID             int64   `gorm:"column:id"`
	Title          string  `gorm:"column:title"`
	CreatorName    *string `gorm:"column:creator_name"`
	CollectionName *string `gorm:"column:collection_name"`
	AudioURL       string  `gorm:"column:audio_url"`
	IsDeadLink     bool    `gorm:"column:is_dead_link"`
	Type           string  `gorm:"column:type"`
}

// DEPRECATED
func (r *Queries) GetTrackBySearch(search string) ([]models.Track, error) {
	var tracks []models.Track
	res := r.QueriesDB.Where("title ILIKE ?", "%"+search+"%").Preload("Genre").Preload("Creator").Preload("Collection").Find(&tracks)
	return tracks, res.Error
}

func (r *Queries) GetTrackByID(id int64) (*models.Track, error) {
	var track models.Track
	res := r.QueriesDB.Preload("Creator").Preload("Genre").Preload("Collection").First(&track, "id = ?", id)
	return &track, res.Error
}

func (r *Queries) GetGenreByID(id int64) (*models.Genre, []models.Track, error) {
	var genre models.Genre
	if res := r.QueriesDB.First(&genre, "id = ?", id); res.Error != nil {
		return nil, nil, res.Error
	}
	var tracks []models.Track
	res := r.QueriesDB.Where("genre_id = ?", id).
		Preload("Creator").Preload("Genre").Preload("Collection").
		Order("created_at DESC").Find(&tracks)
	return &genre, tracks, res.Error
}

// DEPRECATED
func (r *Queries) GetAllTracks() ([]models.Track, error) {
	var tracks []models.Track
	res := r.QueriesDB.Preload("Creator").Preload("Genre").Preload("Collection").Order("created_at DESC").Find(&tracks)
	return tracks, res.Error
}

func (r *Queries) GetCreatorByID(id int64) (*models.Creator, error) {
	var creator models.Creator
	res := r.QueriesDB.First(&creator, "id = ?", id)
	return &creator, res.Error
}

func (r *Queries) GetAllCreators() ([]models.Creator, error) {
	var creator []models.Creator
	res := r.QueriesDB.Find(&creator)
	return creator, res.Error
}

func (r *Queries) GetCreatorTracks(creatorID int64) ([]models.Track, error) {
	var tracks []models.Track
	res := r.QueriesDB.Where("creator_id = ?", creatorID).Preload("Genre").Preload("Creator").Preload("Collection").Order("created_at DESC").Find(&tracks)
	return tracks, res.Error
}

func (r *Queries) GetCreatorCollections(creatorID int64) ([]models.Collection, error) {
	var collections []models.Collection
	res := r.QueriesDB.Where("id IN (?)", r.QueriesDB.Model(&models.Track{}).Select("DISTINCT collection_id").Where("creator_id = ?", creatorID)).Find(&collections)
	return collections, res.Error
}

func (r *Queries) AdminListTracks() ([]adminListTrack, error) {
	var rows []adminListTrack
	err := r.QueriesDB.
		Table("tracks as t").
		Select(`
            t.id,
            t.title,
			c.name AS creator_name,
            col.name AS collection_name,
            t.type,
            t.audio_url,
            t.is_dead_link
        `).
		Joins("LEFT JOIN creators c ON c.id = t.creator_id").
		Joins("LEFT JOIN collections col ON col.id = t.collection_id").
		Order("t.id ASC").
		Scan(&rows).Error

	return rows, err
}

func (r *Queries) UpdateTrackDeadLink(id int64, isDeadLink bool) error {
	return r.QueriesDB.Model(&models.Track{}).Where("id = ?", id).Update("is_dead_link", isDeadLink).Error
}
