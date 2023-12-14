package controller

import (
	"github.com/gin-gonic/gin"
)

func GetRouter() *gin.Engine {
	r := gin.Default()

	// ログイン
	r.GET("/login", login)
	// ログアウト
	r.GET("/logout", logout)
	//サインアップ
	r.POST("/sign-up", signUp)
	// ランキングの取得
	r.GET("/ranking", showRanking)
	// 首都を引数としてスコアを返す
	r.GET("/score", getScore)
	// ハイスコアかの判定、ハイスコアならランキングを更新して返す、じゃないならそのままの値を返す
	r.GET("/result", getResult)

	return r
}
