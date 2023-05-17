FROM golang:1.20-alpine

WORKDIR /app

RUN go install github.com/githubnemo/CompileDaemon@latest

COPY . .

RUN go mod download

ENTRYPOINT CompileDaemon --build="go build main.go" --command=./main -polling=true