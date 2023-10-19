package controller

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func Router(router *gin.Engine) {
	router.GET("/", index)
	router.POST("/login", login)
}

func index(c *gin.Context) {
	c.HTML(http.StatusOK, "home/index.html", gin.H{"title": "hello"})
}

func login(c *gin.Context) {
	email := "hari.krishnan@gmail.com"
	password := "123456"
	fmt.Println(c.Request)

	if email == "hari.krishnan@gmail.com" && password == "123456" {
		c.SetCookie("username", email, 3600, "", "", false, true)

	}
}
