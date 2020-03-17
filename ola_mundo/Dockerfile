FROM golang:latest AS builder
WORKDIR /go/src/github.com/dearrudam/maratona-fullcycle/ola_mundo
COPY *.go  .
RUN go get -d -v ./...  
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o ola_mundo .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/dearrudam/maratona-fullcycle/ola_mundo .
CMD ["./ola_mundo"]