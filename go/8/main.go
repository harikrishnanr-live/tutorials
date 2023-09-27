package main

import "fmt"

func main() {
	fmt.Println("This program will give you a demo about loops")

	// Infinite Loops
	for {
		fmt.Println("Infinite Loops")
		break
	}

	// conditional based looping
	i := 1
	for i <= 5 {
		fmt.Println(i)
		i++
	}

	// Counter Based loops
	for j := 10; j < 15; j++ {
		fmt.Println(j)
	}

	// Array looping
	k := [5]int{20, 21, 22, 23, 24}
	for l, m := range k {
		fmt.Println("l", l)
		fmt.Println("m", m)
	}

	// Array looping
	n := [5]int{25, 26, 27, 28, 29}
	for _, o := range n {
		fmt.Println("o", o)
	}

	// Loops through maps
	names := map[string]string{
		"name": "hari",
		"age":  "31",
	}
	for _, r := range names {
		fmt.Println(r)
	}

}
