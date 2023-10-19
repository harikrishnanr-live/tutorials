package main

import (
	"fmt"
	"functions/subs"
)

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

func variadicSum(numb ...int) int {
	sum := 0
	for _, num := range numb {
		sum = num + sum
	}
	return sum
}

func main() {
	fmt.Println("This is a demo of function")
	fmt.Println(Sum(5, 10))
	fmt.Println(Div(5, 7))
	fmt.Println(Calc(50, 30))

	//Variadic Parameters
	printName("Sachin", "Kaif")
	subs.ShowFootballer("Luna", "KP")

	result := variadicSum(1, 2, 3)
	fmt.Println(result)

	result = variadicSum(10, 20, 30, 40, 50)
	fmt.Println(result)

	// Anonymous Function
	total := func(num1, num2 int) int {
		return num1 + num2
	}
	fmt.Println(total(50, 54))
}
