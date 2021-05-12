FROM golang:alpine

RUN MKDIR /app

ADD . /app

WORKDIR /APP

RUN go clean --modcache

RUN go build -o main .

CMD ["/app/main"]