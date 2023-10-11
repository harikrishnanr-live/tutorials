package controllers

import (
	"main/initializers"
	"main/models"

	"github.com/gin-gonic/gin"
)

func GetPostIndex(c *gin.Context) {
	var posts []models.Post
	initializers.DB.Find(&posts)
	c.JSON(200, gin.H{
		"data": posts,
	})
}

func PostsCreate(c *gin.Context) {
	var body struct {
		Body  string
		Title string
	}
	c.Bind(&body)
	post := models.Post{Title: body.Title, Body: body.Body}
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

func ShowPost(c *gin.Context) {
	id := c.Param("id")
	var post models.Post
	result := initializers.DB.First(&post, id)
	if result.Error != nil {
		c.JSON(400, gin.H{
			"msessage": "No id found",
		})
		return
	} else {
		c.JSON(200, gin.H{
			"data": post,
		})
	}
}

func UpdatePost(c *gin.Context) {
	id := c.Param("id")
	var body struct {
		Body  string
		Title string
	}
	c.Bind(&body)
	var post models.Post
	initializers.DB.First(&post, id)

	result := initializers.DB.Model(&post).Updates(models.Post{Title: body.Title, Body: body.Body})

	if result.Error != nil {
		c.JSON(400, gin.H{
			"message": "Error",
		})
	} else {
		c.JSON(200, gin.H{
			"data": post,
		})
	}
}

func DeletePost(c *gin.Context) {
	id := c.Param("id")
	result := initializers.DB.Delete(&models.Post{}, id)
	if result.Error != nil {
		c.JSON(400, gin.H{
			"message": "Error",
		})
	} else {
		c.JSON(200, gin.H{
			"response": "Deleted Post",
		})
	}

}
