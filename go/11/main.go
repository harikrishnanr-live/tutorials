package main

import "fmt"

type PetrolEngine struct {
	Name string
}

func (e PetrolEngine) Start() {
	fmt.Println("Starting Petrol Engine")
}

type GasEngine struct {
	Name string
}

func (e GasEngine) Start() {
	fmt.Println("Starting Gas ENgine")
}

type Engine interface {
	Start()
}

func Start(e Engine) {
	e.Start()
}

func main() {
	fmt.Println("This is an advance Go OOPs tutorial using Interfaces")
	pEngine := PetrolEngine{
		Name: "Petorl",
	}

	gEngine := GasEngine{
		Name: "Gas",
	}

	Start(pEngine)
	Start(gEngine)
}
