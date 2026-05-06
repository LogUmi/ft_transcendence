package queries

import (
	"ft_transcendance/backend/internal/models"
)

type HomeAnalytics struct {
	LastReleaseTracks    []models.LastReleaseTrack
	MostListenedTracks   []models.MostListenedTrackSite
	MostListenedAlbums   []models.MostListenedCollectionSite
	MostListenedCreators []models.MostListenedCreatorSite
	MostListenedGenres   []models.MostListenedGenreSite
	DiscoverTracks       []models.LastReleaseTrack
}

type UserAnalytics struct {
	MostListenedTracks   []models.MostListenedTrackUser
	MostListenedAlbums   []models.MostListenedCollectionUser
	MostListenedCreators []models.MostListenedCreatorUser
	MostListenedGenres   []models.MostListenedGenreUser
}

func (r *Queries) GetHomeAnalytics(trackType string, limit int) (*HomeAnalytics, error) {
	var analytics HomeAnalytics

	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("release_date DESC NULLS LAST").
		Limit(limit).
		Find(&analytics.LastReleaseTracks).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("total_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedTracks).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("total_collection_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedAlbums).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("total_creator_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedCreators).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("total_genre_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedGenres).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("type = ?", trackType).
		Order("RANDOM()").
		Limit(limit).
		Find(&analytics.DiscoverTracks).Error; err != nil {
		return nil, err
	}

	return &analytics, nil
}

func (r *Queries) GetUserAnalytics(userID int64, trackType string, limit int) (*UserAnalytics, error) {
	var analytics UserAnalytics

	if err := r.QueriesDB.Where("user_id = ? AND type = ?", userID, trackType).
		Order("total_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedTracks).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("user_id = ? AND type = ?", userID, trackType).
		Order("total_collection_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedAlbums).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("user_id = ? AND type = ?", userID, trackType).
		Order("total_creator_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedCreators).Error; err != nil {
		return nil, err
	}
	if err := r.QueriesDB.Where("user_id = ? AND type = ?", userID, trackType).
		Order("total_genre_time DESC").
		Limit(limit).
		Find(&analytics.MostListenedGenres).Error; err != nil {
		return nil, err
	}

	return &analytics, nil
}
