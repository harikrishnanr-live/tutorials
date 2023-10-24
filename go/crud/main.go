package main

import (
	"database/sql"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
)

var dbm *sql.DB

func connectDB() {
	db, err := sql.Open("mysql", "root:@(127.0.0.1:3306)/go_lang_1?parseTime=true")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("MY SQL Connected....")
	dbm = db
}

func createTable() {
	query := `create table student{
		sid int auto_increment,
		name text not null,
		course text not null,
		created_at datetime,
		primary key(sid)
	}`
	_, err := dbm.Exec(query)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Student Table Created....")
}

func main() {
	fmt.Println("This is a demo for CRUD operations using mysql")
	http.ListenAndServe(":8080", nil)
	connectDB()
}
