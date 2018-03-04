default: build

build: 
	sudo docker build . --tag ${TAG}

dependencies: 
	@go get net/http
	@go get encoding/json

test: test-all

test-all:
	@go test -v ./...

test-min:
	@go test ./...

run:
	docker run -p 8080:8080 -d ${TAG} 
