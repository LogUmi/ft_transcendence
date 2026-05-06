package queries

import "ft_transcendance/backend/internal/models"

func (r *Queries) GetCollectionByID(id int64) (*models.Collection, error) {
	var collection models.Collection
	res := r.QueriesDB.First(&collection, "id = ?", id)
	return &collection, res.Error
}

func (r *Queries) GetCollectionTracks(id int64) ([]models.Track, error) {
	var tracks []models.Track
	res := r.QueriesDB.Where("collection_id = ?", id).Preload("Creator").Preload("Genre").Find(&tracks)
	return tracks, res.Error
}

func (r *Queries) GetAllCollections() ([]models.Collection, error) {
	var collections []models.Collection
	res := r.QueriesDB.Find(&collections)
	return collections, res.Error
}
