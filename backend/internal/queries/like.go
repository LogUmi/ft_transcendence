package queries

import "ft_transcendance/backend/internal/models"

func (r *Queries) GetUserLikes(userID int64) ([]models.Like, error) {
	var likes []models.Like
	res := r.QueriesDB.Where("user_id = ?", userID).Preload("Track").Find(&likes)
	return likes, res.Error
}

func (r *Queries) AddLike(userID, trackID int64) error {
	like := models.Like{UserID: userID, TrackID: trackID}
	res := r.QueriesDB.Create(&like)
	return res.Error
}

func (r *Queries) RemoveLike(userID, trackID int64) error {
	res := r.QueriesDB.Where("user_id = ? AND track_id = ?", userID, trackID).Delete(&models.Like{})
	return res.Error
}
