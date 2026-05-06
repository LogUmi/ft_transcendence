package handler

import (
	// "log"
	"net/http"
	"os"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
)

func (app *App) HandleRegister(c *gin.Context) {
	// TODO: lire le body JSON, valider, hash bscrypt, inserer en db, renvoyer JWT

	// check email
	var body struct {
		Email    string
		Password string
		Username string
	}

	if c.Bind(&body) != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "failed to read body",
		})
		return
	}

	user, err := app.Queries.GetUserByEmail(body.Email)
	if err == nil && user != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "email already used or invalid",
		})
		return
	}

	user, err = app.Queries.GetUserByUsername(body.Username)
	if err == nil && user != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "username already used or invalid",
		})
		return
	}

	user, err = app.Queries.CreateUser(body.Email, body.Password, body.Username)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "invalid email, username or password",
		})
		return
	}

	// generate jwt
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"sub": user.ID,
		"exp": time.Now().Add(time.Hour * 24 * 30).Unix(),
	})
	tokenString, err := token.SignedString([]byte(os.Getenv("JWT_SECRET")))
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "failed to create token",
		})
		return
	}
	c.SetCookie("Authorization", tokenString, 60*60*24*30, "/", "", true, true)
	c.JSON(http.StatusOK, gin.H{"token": tokenString})
}
