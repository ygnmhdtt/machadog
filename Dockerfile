FROM golang:1.9-alpine

ENV GOPATH="/go/src"

RUN apk add --update git mysql-client tzdata ca-certificates zip bash && \
    go get -u github.com/golang/dep/cmd/dep && \
    go get -u github.com/golang/lint/golint && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

WORKDIR /go/src/mechadog/
