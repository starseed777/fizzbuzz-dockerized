FROM golang:alpine AS build1

WORKDIR /fizzbuzz

COPY . . 

RUN go build -v -o fizzbuzzapp




FROM alpine

WORKDIR /app 

COPY --from=build1 /fizzbuzz/fizzbuzzapp .

CMD ["./fizzbuzzapp"]




