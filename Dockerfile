FROM golang:alpine3.15

RUN apk add build-base

ENV GOBIN /go/bin

RUN go install golang.org/x/tools/cmd/goimports@latest
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest