FROM golang:alpine3.17

RUN apk add build-base

ENV GOBIN /go/bin

RUN go install golang.org/x/tools/cmd/goimports@latest
RUN go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest