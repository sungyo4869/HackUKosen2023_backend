// DBとのコネクト
// DBへのユーザー登録の時のインサート
// スコアの比較
// スコアのインサート
// DBからのSELECT

package model

import(
	"gorm.io/gorm"
    "gorm.io/driver/mysql"
    _ "github.com/jinzhu/gorm/dialects/mysql"
)

var db *gorm.DB
var err error

func InitializeDB() {
    USER := "root"
    PASS := "pass"
    PROTOCOL := "tcp(hackdenoel-mysql:3306)" 
    DBNAME := "noel-db"
    CONNECT := USER + ":" + PASS + "@" + PROTOCOL + "/" + DBNAME + "?parseTime=true"

    db, err = gorm.Open(mysql.Open(CONNECT), &gorm.Config{})
    
    if err != nil {
        panic(err.Error())
    }
}


func GetHighScore(){
    // ハイスコアを返す
}

func UpdateHighScore(){
    // ハイスコアを更新する
}

func GetRanking() {
	// ソートしたランキングのリストを返す
}

func CreateUser() {
	// ユーザーの情報をDBに格納する
}

func SearchUser(){
	// ユーザーがいるかどうか確認する
}

func DeleteUser(){
	// ユーザーの情報を削除する
}

func GetUserID(){
    // トークンからユーザーIDを取得
}


func CreateToken(){
    
	// トークンを生成する
}

func SearchToken(){
	// トークンがDBに存在するか確認する
}

func GetScore(){
    // 都市ごとに加算されるスコアを返す
}

func DeleteToken(){
	// トークンを削除する 
}