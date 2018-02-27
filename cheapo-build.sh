
if [ ! -d "bin" ]; then
  mkdir bin
fi

cd src

go get net/http
go get encoding/json

CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ../bin/hello . 

