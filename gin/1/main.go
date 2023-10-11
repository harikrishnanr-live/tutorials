package main

import (
	"fmt"
	"main/controllers"
	"main/initializers"

	"github.com/gin-gonic/gin"
)

func init() {
	initializers.LoadEnv()
	initializers.ConnectDB()
}

func main() {
	fmt.Println("This is a crud operation demo projects")

	r := gin.Default()
	r.GET("/", func(ctx *gin.Context) {
		ctx.JSON(200, gin.H{
			"message": "Its a get apis",
		})
	})

	r.POST("/save-post", controllers.PostsCreate)
	r.Run()
}
