// DBとのコネクト
// DBへのユーザー登録の時のインサート
// スコアの比較
// スコアのインサート
// DBからのSELECT

package model

import (
	"os"
	"time"

	"github.com/dgrijalva/jwt-go"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"

	_ "github.com/jinzhu/gorm/dialects/mysql"
)

var db *gorm.DB
var err error
var secretKey = os.Getenv("SECRET_KEY")

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

func InitHighScore(){
    
}

func GetHighScore(userID int) (int, error){
    // ハイスコアを返す

    var userScore Scores
    result := db.Where("user_id = ?", userID).First(&userScore)

    if result.Error != nil {
        return -1, result.Error
    }

    return userScore.Score, nil
}

func UpdateHighScore(newHighScore *Scores) error {

    var existingScore Scores

    result := db.Where("user_id = ?", newHighScore.UserID).First(&existingScore)
	
	if result.Error == nil {
		// UserIDが一致する行が存在する場合、削除
		db.Unscoped().Where("user_id = ?", existingScore.UserID).Delete(&existingScore)
	}
	
	// 新しいデータを挿入
	newData := Scores{Score: newHighScore.Score, UserID: newHighScore.UserID}
	result = db.Create(&newData)

	return result.Error
}

func GetRanking() ([]Scores, error) {
	// ソートしたランキングのリストを返す

    var ranking []Scores

    result := db.Order("score desc").Find(&ranking)

    if result.Error != nil {
        return []Scores{}, result.Error
    }

    return ranking, result.Error
}

func CreateUser(newUser *User) error {
	// ユーザーの情報をDBに格納する
    result := db.Create(&newUser)

    return result.Error
}

func GetUserID(userInput *User) (int, error) {

    var user *User

	result := db.Where("user_name = ? AND password = ?", userInput.UserName, userInput.Password).First(&user)

    return user.UserID, result.Error
}

func GetUserName(userID int) (string, error) {
    var user *User

    result := db.Where("user_id = ?", userID).First(&user)

    return user.UserName, result.Error
}

func DeleteUser(){
	// ユーザーの情報を削除する
}

func GenerateToken(userID int) (string, error){

    expirationTime := time.Now().Add(time.Hour * 1).Unix()

	claims := jwt.MapClaims{
		"user_id": userID,
		"exp":     expirationTime, // トークンの有効期限（1時間）
	}

    token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)

    // secretKey を使ってトークンを署名
    signedToken, err := token.SignedString([]byte(secretKey))
    if err != nil {
        return "", err
    }

    return signedToken, nil
}

func GetScore(cities []string) (int, error) {
    // 都市ごとに加算されるスコアを返す

    totalScore := 0

    for _, city := range cities {
        var cityScore Cities
        result := db.Where("city_name = ?", city).First(&cityScore)
        if result.Error != nil {
            return -1, result.Error
        }
        totalScore += cityScore.CityScore
    }

    return totalScore, nil
}