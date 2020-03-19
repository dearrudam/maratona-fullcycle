############################
# STEP 1 build executable binary
############################
FROM golang:latest AS builder
WORKDIR /go/src/github.com/dearrudam/maratona-fullcycle
COPY . .
RUN go get -d -v ./...
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/olamundo ./cmd/olamundo/main.go

############################
# STEP 2 build a small image
############################
FROM scratch
COPY --from=builder /go/bin/olamundo /go/bin/olamundo
# Run the hello binary.
ENTRYPOINT ["/go/bin/olamundo"]