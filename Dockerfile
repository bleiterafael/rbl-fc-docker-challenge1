FROM golang:alpine

RUN mkdir /app
ADD app /app/

WORKDIR /app

RUN go env -w GO111MODULE=off
RUN go build -o main .

CMD ["/app/main"]