SHELL:=/bin/bash

.PHONY:
clean:
	@-rm ./app
	@-rm ./*.go

.PHONY: build
build: clean
	@docker run --rm -v "$(PWD)":/go/src/app -w /go/src/app levonet/golang:go2go go tool go2go build

.PHONY: run
run:
	@go run main.go
