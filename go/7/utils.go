package main

import "fmt"

func printName(names ...string) {
	fmt.Println(names)
	fmt.Println(names[1])
}
