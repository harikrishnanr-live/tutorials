package controllers

import (
	"main/initializers"
	"main/models"

	"github.com/gin-gonic/gin"
)

func PostsCreate(c *gin.Context) {
	post := models.Post{
		Title: "test",
		Body:  "test-body",
	}
	result := initializers.DB.Create(&post)
	if result.Error != nil {
		c.Status(400)
		return
	} else {
		c.JSON(200, gin.H{
			"message": post,
		})
	}

}
