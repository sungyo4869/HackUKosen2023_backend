package main

import (
	"src/controller"
	"src/model"
)

func main() {
	model.InitializeDB()
	router := controller.GetRouter()
	router.Run(":8080")
}