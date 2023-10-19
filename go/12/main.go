package main

import "fmt"

func main() {
	fmt.Println("This is a demo of Pointers")

	var i int = 25
	fmt.Println("Printing the value of variable:", i)
	fmt.Println("Shows the address of that variable:", &i)

	var j = &i
	fmt.Println("Shows address of the variable i:", i)
	fmt.Println("Shows the address of variable j:", &j)
}
