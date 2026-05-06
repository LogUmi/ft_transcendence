package queries

import (
	"ft_transcendance/backend/internal/models"
	"math"

	"gorm.io/gorm"
)

func (r *Queries) GetUserHistory(userID int64) ([]models.HistoryLog, error) {
	var historyLog []models.HistoryLog
	res := r.QueriesDB.Where("user_id = ?", userID).
		Preload("Track").
		Order("created_at DESC").
		Find(&historyLog)
	return historyLog, res.Error
}

func (r *Queries) UpsertHistory(userID int64, input models.HistoryUpsertInput) error {
	position := int64(0)
	if input.LastPositionSeconds != nil {
		position = int64(math.Round(*input.LastPositionSeconds))
		if position < 0 {
			position = 0
		}
	}

	listened := int64(0)
	if input.LastSecondsListened != nil {
		listened = int64(math.Round(*input.LastSecondsListened))
		if listened < 0 {
			listened = 0
		}
	}

	isCompleted := input.Completed != nil && *input.Completed
	isSkipped := input.Skipped != nil && *input.Skipped
	if isCompleted && isSkipped {
		isSkipped = false
	}

	return r.QueriesDB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Exec(`
			INSERT INTO history_logs (
				user_id,
				track_id,
				started_at,
				ended_at,
				last_position_seconds,
				last_seconds_listened,
				completed,
				skipped
			)
			VALUES (?, ?, ?, ?, ?, ?, ?, ?)
		`,
			userID,
			input.TrackID,
			input.StartedAt,
			input.EndedAt,
			position,
			listened,
			isCompleted,
			isSkipped,
		).Error; err != nil {
			return err
		}

		if err := tx.Exec(`
			INSERT INTO histories (
				user_id,
				track_id,
				last_started_at,
				last_ended_at,
				last_position_seconds,
				last_seconds_listened,
				play_count,
				total_seconds_listened,
				last_completed,
				last_skipped,
				completed_count,
				skipped_count,
				created_at,
				updated_at
			)
			VALUES (?, ?, ?, ?, ?, ?, 1, ?, ?, ?, CASE WHEN ? THEN 1 ELSE 0 END, CASE WHEN ? THEN 1 ELSE 0 END, NOW(), NOW())
			ON CONFLICT (user_id, track_id) DO UPDATE
			SET last_started_at = EXCLUDED.last_started_at,
			    last_ended_at = EXCLUDED.last_ended_at,
			    last_position_seconds = EXCLUDED.last_position_seconds,
			    last_seconds_listened = EXCLUDED.last_seconds_listened,
			    play_count = histories.play_count + 1,
			    total_seconds_listened = histories.total_seconds_listened + EXCLUDED.last_seconds_listened,
			    last_completed = EXCLUDED.last_completed,
			    last_skipped = EXCLUDED.last_skipped,
			    completed_count = histories.completed_count + CASE WHEN EXCLUDED.last_completed THEN 1 ELSE 0 END,
			    skipped_count = histories.skipped_count + CASE WHEN EXCLUDED.last_skipped THEN 1 ELSE 0 END,
			    updated_at = NOW()
		`,
			userID,
			input.TrackID,
			input.StartedAt,
			input.EndedAt,
			position,
			listened,
			listened,
			isCompleted,
			isSkipped,
			isCompleted,
			isSkipped,
		).Error; err != nil {
			return err
		}

		return nil
	})
}

func (r *Queries) GetUserHistoryByTrackID(userID int64, trackID int64) (models.History, error) {
	var history models.History
	res := r.QueriesDB.Where("user_id = ? AND track_id = ?", userID, trackID).
		First(&history)
	return history, res.Error
}
