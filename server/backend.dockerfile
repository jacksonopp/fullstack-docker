FROM golang:1.21-alpine

RUN mkdir -p /app

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /fullstack-docker
EXPOSE $PORT

CMD [ "/fullstack-docker" ]