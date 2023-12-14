package model

import "github.com/dgrijalva/jwt-go"

type Claims struct {
	UserID string
	jwt.StandardClaims
}