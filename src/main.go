package main

import (
    "github.com/gin-gonic/gin"
    "gorm.io/gorm"
    "gorm.io/driver/mysql"
    _ "github.com/jinzhu/gorm/dialects/mysql"
)

func main() {
    DBMigrate(DBConnect())
    r := gin.Default()
    
    r.GET("/ping", func(c *gin.Context) {
        c.JSON(200, gin.H{
            "message": "成功",
        })
    })
    r.Run(":8080")
}

type User struct {
    gorm.Model
    NickName string `json:"nickName"`
}

func DBMigrate(db *gorm.DB) *gorm.DB {
    db.AutoMigrate(&User{})
    return db
}


func DBConnect() *gorm.DB {
    USER := "root"
    PASS := "pass"
    PROTOCOL := "tcp(hackdenoel-mysql:3306)" 
    DBNAME := "noel-db"
    CONNECT := USER + ":" + PASS + "@" + PROTOCOL + "/" + DBNAME + "?parseTime=true"

    db, err := gorm.Open(mysql.Open(CONNECT), &gorm.Config{})
    
    if err != nil {
        panic(err.Error())
    }
    return db
}

