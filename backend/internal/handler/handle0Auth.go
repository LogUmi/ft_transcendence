package handler

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"os"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
	"golang.org/x/oauth2"
	"golang.org/x/oauth2/google"
)

func googleConfig() *oauth2.Config {
	return &oauth2.Config{
		ClientID:     os.Getenv("GOOGLE_CLIENT_ID"),
		ClientSecret: os.Getenv("GOOGLE_CLIENT_SECRET"),
		RedirectURL:  os.Getenv("FRONTEND_URL") + "/api/auth/google/callback",
		Scopes:       []string{"openid", "email", "profile"},
		Endpoint:     google.Endpoint,
	}
}

func (app *App) HandleGoogleRedirect(c *gin.Context) {
	url := googleConfig().AuthCodeURL("wave-state", oauth2.AccessTypeOffline)
	c.Redirect(http.StatusTemporaryRedirect, url)
}

func (app *App) HandleGoogleCallback(c *gin.Context) {
	code := c.Query("code")
	config := googleConfig()

	token, err := config.Exchange(context.Background(), code)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "code exchange failed",
		})
		return
	}
	res, err := config.Client(context.Background(), token).Get("https://www.googleapis.com/oauth2/v2/userinfo")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to get user info"})
		return
	}

	defer res.Body.Close()

	var info struct {
		ID      string `json:"id"`
		Email   string `json:"email"`
		Name    string `json:"name"`
		Picture string `json:"picture"`
	}
	body, _ := io.ReadAll(res.Body)
	json.Unmarshal(body, &info)

	user, err := app.Queries.UpsertOAuthUser(info.ID, info.Email, info.Name, info.Picture, "google")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "failed to upsert user"})
		return
	}
	jwtToken, _ := generateJWT(user.ID)
	c.SetCookie("Authorization", jwtToken, 60*60*24*30, "/", "", true, true)
	c.Redirect(http.StatusTemporaryRedirect, os.Getenv("FRONTEND_URL")+"?oauth=true")
}

func generateJWT(userID int64) (string, error) {
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"sub": userID,
		"exp": time.Now().Add(time.Hour * 24 * 30).Unix(),
	})
	return token.SignedString([]byte(os.Getenv("JWT_SECRET")))
}
