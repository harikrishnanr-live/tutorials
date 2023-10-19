package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("This is a demo for CRUD operations")
	http.ListenAndServe(":8080", nil)
}
