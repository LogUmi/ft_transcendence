package queries

import (
	"errors"
	"ft_transcendance/backend/internal/models"
	"github.com/jackc/pgx/v5/pgconn"
	"gorm.io/gorm"
)

var ErrNotOwner = errors.New("playlist not found or access denied")
var ErrTrackMismatch = errors.New("track list does not match playlist contents")
var ErrDuplicateTrack = errors.New("track already in playlist")

func (queries *Queries) GetPlaylistByID(id int64) (*models.Playlist, error) {
	var playlist models.Playlist
	res := queries.QueriesDB.Preload("Contents.Track.Creator").First(&playlist, "id = ?", id)
	return &playlist, res.Error
}

func (query *Queries) GetPlaylistUserID(userID int64) ([]models.Playlist, error) {
	var playlists []models.Playlist
	res := query.QueriesDB.Where("user_id = ?", userID).Preload("Contents.Track.Creator").Find(&playlists)
	return playlists, res.Error
}

func (query *Queries) CreatePlaylist(userID int64, title string) (*models.Playlist, error) {
	playlist := models.Playlist{UserID: userID, Title: title}
	res := query.QueriesDB.Create(&playlist)
	return &playlist, res.Error
}

func (query *Queries) DeletePlaylist(id, userID int64) error {
	res := query.QueriesDB.Where("id = ? AND user_id = ?", id, userID).Delete(&models.Playlist{})
	return res.Error
}

func (query *Queries) AddTrackToPlaylist(playlistID, trackID, position int64) error {
	content := models.PlaylistContent{PlaylistID: playlistID, TrackID: trackID, Position: position}
	if err := query.QueriesDB.Create(&content).Error; err != nil {
		var pgErr *pgconn.PgError
		if errors.Is(err, gorm.ErrDuplicatedKey) || (errors.As(err, &pgErr) && pgErr.Code == "23505") {
			return ErrDuplicateTrack
		}
		return err
	}
	return nil
}

func (query *Queries) RemoveTrackFromPlaylist(playlistID, trackID int64) error {
	res := query.QueriesDB.Where("playlist_id = ? AND track_id = ?", playlistID, trackID).Delete(&models.PlaylistContent{})
	return res.Error
}

func (query *Queries) CountPlaylistTracks(playlistID int64) (int64, error) {
	var max int64
	res := query.QueriesDB.Model(&models.PlaylistContent{}).
		Where("playlist_id = ?", playlistID).
		Select("COALESCE(MAX(position), 0)").
		Scan(&max)
	return max, res.Error
}

func (query *Queries) RenamePlaylist(id, userID int64, title string) error {
	res := query.QueriesDB.Model(&models.Playlist{}).Where("id = ? AND user_id = ?", id, userID).Update("title", title)
	if res.Error != nil {
		return res.Error
	}
	if res.RowsAffected == 0 {
		return gorm.ErrRecordNotFound
	}
	return nil
}

type ReorderItem struct {
	TrackID  int64 `json:"track_id"`
	Position int64 `json:"position"`
}

func (queries *Queries) ReorderPlaylistTracks(playlistID, userID int64, items []ReorderItem) error {
	return queries.QueriesDB.Transaction(func(db *gorm.DB) error {
		var owned int64
		if err := db.Model(&models.Playlist{}).Where("id = ? AND user_id = ?", playlistID, userID).Count(&owned).Error; err != nil {
			return err
		}
		if owned == 0 {
			return ErrNotOwner
		}

		var trackCount int64
		if err := db.Model(&models.PlaylistContent{}).Where("playlist_id = ?", playlistID).Count(&trackCount).Error; err != nil {
			return err
		}
		if trackCount != int64(len(items)) {
			return ErrTrackMismatch
		}

		var maxPos int64
		if err := db.Model(&models.PlaylistContent{}).
			Where("playlist_id = ?", playlistID).
			Select("COALESCE(MAX(position), 0)").
			Scan(&maxPos).Error; err != nil {
			return err
		}
		offset := maxPos + int64(len(items))
		for i, item := range items {
			res := db.Model(&models.PlaylistContent{}).
				Where("playlist_id = ? AND track_id = ?", playlistID, item.TrackID).
				Update("position", offset+int64(i)+1)
			if res.Error != nil {
				return res.Error
			}
			if res.RowsAffected == 0 {
				return ErrTrackMismatch
			}
		}
		for _, item := range items {
			if err := db.Model(&models.PlaylistContent{}).
				Where("playlist_id = ? AND track_id = ?", playlistID, item.TrackID).
				Update("position", item.Position).Error; err != nil {
				return err
			}
		}
		return nil
	})
}