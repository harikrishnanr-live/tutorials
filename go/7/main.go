package main

import "fmt"

func Sum(a, b int) int {
	return a + b
}

func Div(a, b float32) float32 {
	return a / b
}

func Calc(a, b int) (int, int, int, int) {
	add := a + b
	sub := a - b
	mul := a * b
	div := a / b
	return add, sub, mul, div
}

func printName(names ...string) {
	fmt.Println(names)
	fmt.Println(names[1])
}

func main() {
	fmt.Println("This is a demo of function")
	fmt.Println(Sum(5, 10))
	fmt.Println(Div(5, 7))
	fmt.Println(Calc(50, 30))

	//Variadic Parameters
	printName("Sachin", "Kaif")
}
