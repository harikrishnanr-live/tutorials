package main

import (
	"fmt"
)

func main() {
	// 1
	var arr1 [5]int
	arr1 = [5]int{1, 2, 3, 4, 5}
	fmt.Println(arr1)
	fmt.Println(arr1[4])

	// 2
	arr2 := [3]string{"orange", "apple", "mango"}
	fmt.Println("arr2:", arr2)

	// changing a value in array
	arr2[2] = "banana"
	fmt.Println("arr2 changed", arr2)

	// find the length of an array
	fmt.Println(len(arr1))
}
