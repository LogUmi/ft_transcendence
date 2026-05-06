package main

import (
	"context"
	"log"
	"os"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/redis/go-redis/v9"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"

	//chemin
	"ft_transcendance/backend/internal/handler"
	"ft_transcendance/backend/internal/models"
	"ft_transcendance/backend/internal/queries"

	"github.com/meilisearch/meilisearch-go"
)

// uniquement pendant prod, valeur par default
// sera pris depuis le docker-compose ensuite
func LoadConfig() handler.Config {
	cfg := handler.Config{
		DBHost:     getEnv("DB_HOST", ""),
		DBPort:     getEnv("DB_PORT", ""),
		DBUser:     getEnv("DB_USER", ""),
		DBPassword: getEnv("DB_PASSWORD", ""),
		DBName:     getEnv("DB_NAME", ""),
		RedisAddr:  getEnv("REDIS_ADDR", "redis:6379"),
		JWTSecret:  getEnv("JWT_SECRET", ""),
		Port:       getEnv("PORT", "8080"),
		MeilAddr:   getEnv("MEIL_ADDR", ""),
		MeilKey:    getEnv("MEILI_MASTER", ""),
	}
	if cfg.DBUser == "" || cfg.DBPassword == "" || cfg.JWTSecret == "" {
		log.Fatal("Missing required env vars: DB_USER, DB_PASSWORD, JWT_SECRET")
	}
	return cfg
}

// lit var env ou renvoie val par defaut
func getEnv(key, fallback string) string {
	if val := os.Getenv(key); val != "" {
		return val
	}
	return fallback
}

// connection a postgre par GORM
func InitDB(cfg handler.Config) *gorm.DB {
	// construction du DataSourceName, DSN
	dsn := " host=" + cfg.DBHost +
		" user=" + cfg.DBUser +
		" password=" + cfg.DBPassword +
		" dbname=" + cfg.DBName +
		" port=" + cfg.DBPort +
		" sslmode=disable" +
		" TimeZone=UTC"

	// connection avec retry
	var db *gorm.DB
	var err error

	for i := 0; i < 10; i++ {
		db, err = gorm.Open(postgres.Open(dsn), &gorm.Config{})
		if err == nil {
			break
		}
		log.Printf("Try %d/10 : PostgeSQL not ready yet, retry in 2s...", i+1)
		time.Sleep(2 * time.Second)
	}
	if err != nil {
		log.Fatal("PostgreSQL connection impossible: ", err)
	}
	return db
}

func InitMeiliSearch(cfg handler.Config, db *gorm.DB) meilisearch.ServiceManager {
	meiliClient := meilisearch.New(cfg.MeilAddr, meilisearch.WithAPIKey(cfg.MeilKey))
	for i := 0; i < 10; i++ {
		_, err := meiliClient.Health()
		if err == nil {
			log.Println("Meilisearch connected")
			break
		}
		log.Printf("Try %d/10: Meilisearch not ready yet, retry in 2s...", i+1)
		time.Sleep(2 * time.Second)
	}

	var tracks []models.Track
	db.Preload("Creator").Preload("Genre").Preload("Collection").Find(&tracks)
	pk := "ID"
	_, err := meiliClient.Index("tracks").AddDocuments(&tracks, &meilisearch.DocumentOptions{PrimaryKey: &pk})
	meiliClient.Index("tracks").UpdateSearchableAttributes(&[]string{
		"Title", "Creator.Name", "Genre.Name", "Collection.Name", "Type",
	})
	if err != nil {
		log.Printf("Meilisearch indexatoin failed: %v", err)
	}
	meiliClient.Index("tracks").UpdateFilterableAttributes(&[]interface{}{
		"Type", "Genre.Name",
	})

	var creators []models.Creator
	db.Find(&creators)
	pk = "ID"
	_, err = meiliClient.Index("creators").AddDocuments(&creators, &meilisearch.DocumentOptions{
		PrimaryKey: &pk,
	})
	if err != nil {
		log.Printf("Meilisearch creators indexation failed: %v", err)
	}
	meiliClient.Index("creators").UpdateSearchableAttributes(&[]string{
		"Name",
	})

	return meiliClient
}

// redis - cache
func InitRedis(cfg handler.Config) *redis.Client {
	rdb := redis.NewClient(&redis.Options{
		Addr:     cfg.RedisAddr,
		Password: "",
		DB:       0,
	})
	// verification quand redis repond
	ctx := context.Background()
	for i := 0; i < 10; i++ {
		_, err := rdb.Ping(ctx).Result()
		if err == nil {
			log.Println("Redis connected")
			return rdb
		}
		log.Printf("Try %d/10: Redis not ready yet, retry in 2s...", i+1)
		time.Sleep(2 * time.Second)
	}
	log.Fatal("Impossible connection to Redis")
	return nil
}

func setupWebsocket(app *handler.App) (*handler.Hub, *handler.Router) {

	hub := handler.NewHub(app.Queries)
	router := handler.NewRouter()
	router.AddHandler("chat.send.mp", func(c *handler.Client, msg handler.Message) { app.WSChatSendMP(c, msg) })
	router.AddHandler("chat.send.general", func(c *handler.Client, msg handler.Message) { app.WSChatSendGeneral(c, msg) })
	router.AddHandler("chat.read", func(c *handler.Client, msg handler.Message) { app.WSChatRead(c, msg) })
	go hub.Run()
	return hub, router
}

// acces des handler a la db et redis
// sans var globales. Handler methode sur App

// rien n'est encore setup donc je le commente
func main() {
	config := LoadConfig()
	db := InitDB(config)
	search := InitMeiliSearch(config, db)
	rdb := InitRedis(config)
	// creer app avec toutes les dependances
	app := &handler.App{
		DB:      db,
		Redis:   rdb,
		Config:  config,
		Meili:   search,
		Queries: queries.NewRepository(db),
	}
	hub, router := setupWebsocket(app)
	app.Hub = hub
	// routeur GIN
	r := gin.Default()
	r.Static("/uploads", "/app/uploads")
	// enregistre routes
	// TODO: creer le setup des routes
	app.SetupRoutes(r, hub, router)
	// lance serveur
	log.Printf("Backend starting on port %s: ", config.Port)
	if err := r.Run(":" + config.Port); err != nil {
		log.Fatal("Error while starting server: ", err)
	}
}
