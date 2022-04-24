package main

import (
	"log"
	"os"
	"os/signal"
	"syscall"
)

var build = "development"

func main() {
	log.Println("starting sales-api service v", build)
	defer log.Println("service sales-api has been shutdown")

	ch := make(chan os.Signal, 1)
	signal.Notify(ch, syscall.SIGINT, syscall.SIGTERM)
	<-ch

	log.Println("stopping sales-api service")
}
