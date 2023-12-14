package controller

import (
	"github.com/gin-gonic/gin"
	
	"src/model"
)

func login(c *gin.Context) {
	// model.searchUser()
	// 存在してたらmodel.createToken()
}

func logout(c *gin.Context) {
	// DBに登録してあるトークンを削除
}

func signUp(c *gin.Context) {
	// model.searchUserで同じ名前のアカウントがないか確認

	var newUser model.User

	// リクエストボディからユーザー情報を取得
	if err := c.ShouldBindJSON(&newUser); err != nil {
		c.JSON(400, gin.H{"error": "無効なリクエスト"})
		return
	}

	// パスワードをハッシュ化する処理

	// modelパッケージのCreateUserを呼び出す
	result := model.CreateUser(&newUser)

	if result != nil{
		c.JSON(500, gin.H{"error": "ユーザーの作成に失敗しました"})
	}

	c.JSON(200, gin.H{"message": "ユーザーが正常に登録されました"})
	// トークンを生成
}

func showRanking(c *gin.Context){
	// トークンをヘッダーから取得
	// model.SearchToken()
	// trueならランキングを返す
}

func getResult(c *gin.Context){
	// トークンをヘッダーから取得
	// model.SearchToken()
	// model.GetHighScore()
	// 比較
	// ハイスコアならmodel.updateHighScore()
	// じゃないならそのままの値を返す
}

func getScore(c *gin.Context){
	// トークンをヘッダーから取得
	// model.SearchToken()
	// model.getScore()
	// 返ってきた値を足し算する
}
