package main

import "fmt"

type Number int

func (num Number) is_even() bool {
	return num%2 == 0
}

type Car struct {
	Name  string
	Model string
	Year  int
}

func (d Car) print() string {
	return d.Name + " " + d.Model
}

func main() {
	fmt.Println("This is the program to show oops")

	var num Number
	num = 9
	fmt.Println(num)
	fmt.Println(num.is_even())

	vw := Car{
		Name:  "VW",
		Model: "Vento",
		Year:  2022,
	}
	fmt.Println(vw)

	fmt.Println(vw.print())
}
