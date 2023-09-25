package main

import (
	"fmt"
	"slices"
)

func main() {

	fmt.Println("This is an example for slices")
	// 1
	var arr1 []string
	arr1 = []string{"train", "car"}
	fmt.Println(arr1)

	// 2
	var arr2 []int
	arr2 = []int{1, 2}
	var arr3 []int = arr2
	arr2[1] = 3
	fmt.Println(arr2)
	fmt.Println(arr3)

	fmt.Println(len(arr3))

	// append value to slice
	arr2 = append(arr2, 4)
	fmt.Println(arr2)

	// for deleting an element from splice
	// download this package
	// install package go get golang.org/x/exp/slices

	slices.Delete(arr2, 0, 1)
	fmt.Print(arr2)
}
