package main

import "fmt"

func main() {
	fmt.Println("THis is an example for struct")

	// Method 1
	var Car struct {
		id   int
		name string
	}

	Car.id = 1
	Car.name = "BMW"

	fmt.Println(Car)
	fmt.Println(Car.id)

	// Method 2
	type Ckt struct {
		id   int
		name string
	}
	gill := Ckt{
		id:   1,
		name: "Gill",
	}
	kl := Ckt{
		id:   2,
		name: "Rahul",
	}
	fmt.Println(gill)
	fmt.Println(kl)

	type Blasters struct {
		id        int
		name      string
		positions map[string]bool
	}
	kbfc := []Blasters{
		{
			id:   1,
			name: "Luna",
			positions: map[string]bool{
				"am": true,
				"st": false,
				"cb": false,
			},
		},
		{
			id:   2,
			name: "Sandeep",
			positions: map[string]bool{
				"am": false,
				"st": false,
				"cb": true,
			},
		},
		{
			id:   3,
			name: "Prabir",
			positions: map[string]bool{
				"am": false,
				"st": false,
				"cb": true,
			},
		},
	}
	fmt.Println(kbfc)
}
