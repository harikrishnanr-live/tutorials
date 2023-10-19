package main

import (
	"crud/controller"
	"fmt"
	"log"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func init() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}

}

func main() {
	fmt.Println("This is show demo of html page using gin")
	router := gin.Default()
	router.Static("/assets", "./assets")
	router.LoadHTMLGlob("templates/**/*.html")

	// router.GET("/", func(c *gin.Context) {
	// 	c.HTML(http.StatusOK, "index.html", gin.H{
	// 		"title": "Welcome",
	// 	})
	// })
	controller.Router(router)
	// initializers.LoadRoutes()
	router.Run()
}
