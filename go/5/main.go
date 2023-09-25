package main

import "fmt"

func main() {
	fmt.Print("This is an example for maps")

	var temp map[string]string
	temp = map[string]string{
		"name": "harikrishnan",
		"age":  "31",
	}
	fmt.Println(temp)

	temp2 := map[string]string{
		"name": "roshni",
		"age":  "27",
	}
	fmt.Println(temp2)

	temp3 := map[string][]string{
		"coffee": {"a", "b"},
		"tea":    {"c", "d"},
	}
	fmt.Println(temp3)
	fmt.Println(temp3["coffee"])
	temp3["others"] = []string{"e", "f"}
	fmt.Println("after adding new key", temp3)

	delete(temp3, "tea")
	fmt.Println(temp3)

	// assigning new values
	temp3["others"] = []string{"g"}
}
