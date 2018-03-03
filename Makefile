GOFILES = $(shell find . -name '*.go' -not -path './vendor/*')
default: build

build: 
	docker build . --tag ${TAG}

dependencies: 
	@go get net/http
	@go get encoding/json

test: test-all

test-all:
	#@go test -v $(GOFILES)
	@go test -v ./...

test-min:
	@go test ./...

run:
	docker run -p 8080:8080 -d ${TAG} 
release:
	# aws s3 cp bin/amazonian s3://amazonian.package.release/latest/amazonian
	# aws s3 cp bin/amazonian s3://amazonian.package.release/$(VERSION)/amazonian
