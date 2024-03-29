FROM golang:alpine

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go clean --modcache

RUN go build -o main .

CMD ["/app/main"]