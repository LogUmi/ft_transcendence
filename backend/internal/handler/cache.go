package handler

import (
	"context"
	"errors"
	"log"
	"strings"
	"time"

	"github.com/redis/go-redis/v9"
)

const userCacheTTL = 5 * time.Minute
const tracksListCacheTTL = 2 * time.Minute
const trackCacheTTL = 10 * time.Minute
const albumsListCacheTTL = 5 * time.Minute
const albumCacheTTL = 10 * time.Minute
const creatorCacheTTL = 10 * time.Minute
const creatorsListCacheTTL = 5 * time.Minute
const creatorsTracksCacheTTL = 10 * time.Minute
const creatorAlbumsCacheTTL = 10 * time.Minute

func cacheKey(parts ...string) string {
	return strings.Join(parts, ":")
}

func (app *App) cacheGet(key string) ([]byte, bool) {
	if app.Redis == nil {
		return nil, false
	}

	value, err := app.Redis.Get(context.Background(), key).Bytes()
	if err == nil {
		return value, true
	}

	if errors.Is(err, redis.Nil) {
		return nil, false
	}

	log.Printf("redis GET failed for key %q: %v", key, err)
	return nil, false
}

func (app *App) cacheSet(key string, payload []byte, ttl time.Duration) {
	if app.Redis == nil {
		return
	}

	if err := app.Redis.Set(context.Background(), key, payload, ttl).Err(); err != nil {
		log.Printf("redis SET failed for key %q: %v", key, err)
	}
}

func (app *App) cacheDelete(key string) {
	if app.Redis == nil {
		return
	}

	if err := app.Redis.Del(context.Background(), key).Err(); err != nil {
		log.Printf("redis DEL failed for key %q: %v", key, err)
	}
}

func (app *App) cacheDeletePattern(pattern string) {
	if app.Redis == nil {
		return
	}

	ctx := context.Background()
	var cursor uint64
	for {
		keys, nextCursor, err := app.Redis.Scan(ctx, cursor, pattern, 100).Result()
		if err != nil {
			log.Printf("redis SCAN failed for pattern %q: %v", pattern, err)
			return
		}
		if len(keys) > 0 {
			if err := app.Redis.Del(ctx, keys...).Err(); err != nil {
				log.Printf("redis DEL failed for pattern %q: %v", pattern, err)
			}
		}
		cursor = nextCursor
		if cursor == 0 {
			break
		}
	}
}
