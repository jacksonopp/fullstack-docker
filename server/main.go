package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"

	"github.com/rs/cors"
)

func main() {
	port := flag.String("port", ":8080", ":port")
	flag.Parse()

	mux := http.NewServeMux()
	mux.HandleFunc("/ping", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "pong")
	})

	handler := cors.Default().Handler(mux)
	log.Println("Listening on port", *port)
	if err := http.ListenAndServe(*port, handler); err != nil {
		log.Panicln(err)
	}
}
