package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", process)

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
		log.Printf("Defaulting to port %s", port)
	}

	log.Printf("Listening on port %s", port)
	err := http.ListenAndServe(fmt.Sprintf(":%s", port), nil)
	log.Fatal(err)
}

func process(w http.ResponseWriter, r *http.Request) {
	log.Println("Serving request")

	if r.Method == "GET" {
		fmt.Fprintln(w, "Ready to process POST requests from Cloud Storage trigger")
		return
	}

	// POST not implemented yet
}
