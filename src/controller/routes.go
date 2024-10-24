package controller

import (
	"github.com/gin-gonic/gin"
	"src/middleware"
)

func GetRouter() *gin.Engine {
	r := gin.Default()

	// ログイン
	r.POST("/login", login)
	// ログアウト
	r.GET("/logout", logout)
	//サインアップ
	r.POST("/sign-up", signUp)
	
	// ランキングの取得
	r.GET("/ranking", middleware.AuthMiddleware(), getRanking)
	// 首都を引数としてスコアを返す
	r.POST("/score", middleware.AuthMiddleware(), getScore)
	// ハイスコアかの判定、ハイスコアならランキングを更新して返す、じゃないならそのままの値を返す
	r.POST("/result", middleware.AuthMiddleware(), getResult)

	return r
}
