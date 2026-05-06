package handler

import (
	"ft_transcendance/backend/internal/middleware"
	"ft_transcendance/backend/internal/queries"

	"github.com/gin-gonic/gin"
	"github.com/meilisearch/meilisearch-go"
	"github.com/redis/go-redis/v9"
	"gorm.io/gorm"
)

type App struct {
	DB      *gorm.DB
	Redis   *redis.Client
	Config  Config
	Meili   meilisearch.ServiceManager
	Queries *queries.Queries
	Hub     *Hub
}

type Config struct {
	DBEmail    string
	DBHost     string
	DBPort     string
	DBUser     string
	DBPassword string
	DBName     string
	RedisAddr  string
	JWTSecret  string
	MeilAddr   string
	MeilKey    string
	Port       string
}

// routes

func (app App) SetupRoutes(r *gin.Engine, hub *Hub, router *Router) {

	r.GET("/api/health", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"status": "ok",
			"db":     "connected",
			"redis":  "connected",
		})
	})

	//groupe API
	api := r.Group("/api")
	{
		auth := api.Group("/auth")
		{
			// TODO: creer les methodes sur APP
			auth.POST("/register", app.HandleRegister)
			auth.POST("/login", app.HandleLogin)
			auth.GET("/validate", middleware.RequireAuth(app.DB), middleware.Validate)
			// auth.POST("/refresh", app.HandleRefresh)
			auth.POST("/logout", app.HandleUserLogout)
			auth.GET("/google", app.HandleGoogleRedirect)
			auth.GET("/google/callback", app.HandleGoogleCallback)
		}

		api.GET("/analytic/home/:type", app.HandleGetHomeAnalytic)
		api.GET("/creators", app.HandleAllCreators)

		// routes protegrees (avec middleware JWT)
		protected := api.Group("/")
		protected.Use(middleware.RequireAuth(app.DB))
		{
			//TODO: mettre les autres champs
			protected.GET("/users", app.HandleSearchUsers)
			protected.GET("/users/me", app.HandlerGetUser)
			protected.GET("/users/:id", app.HandleGetUserByID)
			protected.PUT("/users/me", app.HandleUpdateUser)
			protected.POST("/users/me/avatar", app.HandleUploadAvatar)
			protected.DELETE("/users/me", app.HandleDeleteUser)
			protected.GET("/albums", app.HandleListAlbums)
			protected.GET("/likes", app.HandleGetUserLikes)
			protected.POST("/likes/:trackId", app.HandleToggleLike)

			protected.GET("/history", app.HandleGetHistory)
			protected.POST("/history", app.HandleAddHistory)
			protected.GET("/history/track/:id", app.HandleGetHistoryByTrackID)
			protected.GET("/analytic/user/:type", app.HandleGetUserAnalytic)

			protected.GET("admin/users", app.HandleAdminListUsers)
			protected.GET("admin/tracks", app.HandleAdminListTracks)
			protected.PATCH("admin/user", app.HandleAdminUpdateUser)
			protected.PATCH("admin/track", app.HandleAdminUpdateTrack)

			protected.GET("/tracks", app.HandleGetTracks)
			protected.GET("/tracks/:id", app.HandleGetTrackByID)
			protected.GET("/genre/:id", app.HandleGetGenreByID)

			protected.GET("/playlists", app.HandleGetPlaylistUser)
			protected.GET("/playlists/:id", app.HandleGetPlaylistByID)
			protected.POST("/playlists", app.HandleCreatePlaylist)
			protected.DELETE("/playlists/:id", app.HandleDeletePlaylist)
			protected.PUT("/playlists/:id", app.HandleRenamePlaylist)
			protected.POST("/playlists/:id/tracks", app.HandleAddTrackToPlaylist)
			protected.DELETE("/playlists/:id/tracks/:trackId", app.HandleRemoveTrackFromPlaylist)
			protected.PUT("/playlists/:id/tracks", app.HandleReorderPlaylistTracks)

			protected.GET("/creators/:id", app.HandleGetCreatorByID)
			protected.GET("/creators/:id/tracks", app.HandleGetCreatorTracks)
			protected.GET("/creators/:id/collections", app.HandleGetCreatorCollections)

			protected.GET("/albums/:id", app.HandleGetAlbum)

			protected.GET("/friends/:id", app.HandleGetRelation)
			protected.GET("/friends", app.HandleGetFriends)
			protected.POST("/friends/:id", app.HandleUpdateOrCreateFriend)

			protected.GET("/chat/channels/:channel_id/messages", app.HandleGetMessages)
			protected.GET("/chat/channels_list", app.HandleGetChannels)
		}
	}

	// WebSocket à la racine (pas sous /api) avec middleware JWT
	r.GET("/ws", middleware.RequireAuth(app.DB), func(c *gin.Context) { app.HandleWebsocket(c, hub, router) })
}
