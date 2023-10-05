package main

import "fmt"

func main() {
	fmt.Println("This is a demo to display how branching is working on go")

	i := 2
	if i < 6 {
		fmt.Println("if is working", i)
	} else if i > 6 {
		fmt.Println("its not satisfying condition")
	}

	switch i {
	case 1:
		fmt.Println("ONE")
		break

	case 2:
		fmt.Println("TWO")
		break

	case 3:
		fmt.Println("THREE")
		break
	}
}
