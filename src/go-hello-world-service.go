package main

import (
    "fmt"
    "html"
    "log"
    "net/http"
    "encoding/json"
)

type MyResponse struct {
	Code string "json:code"
        Message string "json:answer"
}

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
	resp := MyResponse {
		Code: "200",
		Message: "You hit the endpoint: " + html.EscapeString(r.URL.Path),
	}
	mapResp, _ := json.Marshal(resp)
        fmt.Fprintf(w, string(mapResp) + "\n")
    })

    log.Fatal(http.ListenAndServe(":8080", nil))

}





