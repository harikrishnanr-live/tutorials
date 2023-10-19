package main

import (
	"fmt"
	"main/controllers"
	"main/initializers"

	"github.com/gin-gonic/gin"
)
// CompileDaemon -command="./main.go"
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

	r.GET("/post", controllers.GetPostIndex)
	r.POST("/save-post", controllers.PostsCreate)
	r.GET("/show-post/:id", controllers.ShowPost)
	r.PATCH("/update-post/:id", controllers.UpdatePost)
	r.DELETE("/delete/:id", controllers.DeletePost)
	r.Run()
}
