package middleware

import (
	"ft_transcendance/backend/internal/models"

	"gorm.io/gorm"

	"fmt"
	"net/http"
	"os"
	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
	"time"
)

func RequireAuth(db *gorm.DB) gin.HandlerFunc {

	return func(c *gin.Context) {
		tokenString, err := c.Cookie("Authorization")
		if err != nil {
			fmt.Println("[AUTH] Cookie 'Authorization' manquant:", err)
			c.AbortWithStatus(http.StatusUnauthorized)
			return
		}
		token, err := jwt.Parse(tokenString, func(token *jwt.Token) (any, error) {
			return []byte(os.Getenv("JWT_SECRET")), nil
		},
		jwt.WithValidMethods([]string{jwt.SigningMethodHS256.Alg()}))
		if err != nil {
			c.AbortWithStatus(http.StatusUnauthorized)
			return
		}

		if claims, ok := token.Claims.(jwt.MapClaims); ok && token.Valid {
			// regarder la date exp donc pas expirer is il passe
			if float64(time.Now().Unix()) > claims["exp"].(float64) {
				c.AbortWithStatus(http.StatusUnauthorized)
				return
			}
			///trouver l'user avec le token sub
			var user models.User
			db.First(&user, "id = ? AND is_active = ?", claims["sub"], true)

			if user.ID == 0 {
				c.AbortWithStatus(http.StatusUnauthorized)
				return
			}
			// attecher le token a la request
			c.Set("user", user)
			// continuer

		} else {
			c.AbortWithStatus(http.StatusUnauthorized)
			return
		}

		c.Next()
	}
}

func Validate(c *gin.Context) {
	user, _ := c.Get("user")

	c.JSON(http.StatusOK, gin.H {
		"message" : user,
	})
}