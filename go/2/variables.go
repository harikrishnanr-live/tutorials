package main

import (
	"errors"
	"fmt"
)

// declaring single variables
var a int = 5
var b int = 10

// declaring multiple variables
var c, d int = 100, 200

func main() {
	e, f := 7, "World!"
	fmt.Println(a + b)
	fmt.Println(c + d)
	fmt.Printf("E: %v, String:%v\n", e, f)

	// datatype errors
	err := errors.New("Hari")
	fmt.Println(err)
}
