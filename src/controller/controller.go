package controller

import (
	"github.com/gin-gonic/gin"
	
	// "src/model"
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
	// リクエストボディからユーザー情報を取得
	// パスワードをハッシュ化する処理
	// modelパッケージのCreateUserを呼び出す
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
