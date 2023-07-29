package main

import (
	"fmt"
	"net/http"
)

func getVariable(w http.ResponseWriter, r *http.Request) {
	myVariable := "Hello, Flutter!"
	fmt.printf(w, myVariable)
}

func main() {
	http.HandleFunc("/get-variable", getVariable)
	http.ListenAndServe(":5000", nil)
}
