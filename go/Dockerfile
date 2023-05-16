FROM golang:1.20-alpine

WORKDIR /app

RUN go install github.com/pilu/fresh@latest

COPY . .

RUN go mod download

CMD ["fresh"]