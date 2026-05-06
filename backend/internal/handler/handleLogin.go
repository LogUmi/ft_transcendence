package handler

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
	"golang.org/x/crypto/bcrypt"

	// "github.com/redis/go-redis/v9"
	// "gorm.io/gorm"
	"time"
)

func (app *App) HandleLogin(c *gin.Context) {
	// TODO: lire les emails/password, verifier db, verifier DB, comparer bcrypt, renvoyerJWT
	// get email/pass off the required body
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

	// look up requested user
	user, err := app.Queries.GetValidUserByEmail(body.Email)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "invalid email or password",
		})
		return
	}

	// compare sent password with hash
	if user.PasswordHash == nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "invalid email or password",
		})
		return
	}

	compare := bcrypt.CompareHashAndPassword([]byte(*user.PasswordHash), []byte(body.Password))

	if compare != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "invalidemail or password",
		})
		return
	}

	// generate jwt
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, jwt.MapClaims{
		"sub": user.ID,
		"exp": time.Now().Add(time.Hour * 24 * 30).Unix(),
	})
	// sign and get the complete token as a stringh
	tokenString, err := token.SignedString([]byte(os.Getenv("JWT_SECRET")))

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "failed to create token string",
		})
		return
	}
	//send it back
	// PROD: il faudra que je change le secure a true en prod
	c.SetCookie("Authorization", tokenString, 60*60*24*30, "/", "", false, true)
	c.JSON(http.StatusOK, gin.H{
		"token": tokenString,
	})
}
