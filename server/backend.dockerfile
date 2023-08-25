FROM golang:1.21-alpine

CMD [ "openssl s_client -showcerts -connect storage.googleapis.com:443 </dev/null | openssl x509 -text -noout" ]

# RUN mkdir -p /app

# WORKDIR /app

# COPY go.mod ./
# RUN go mod download

# COPY *.go ./

# RUN go build -o /fullstack-docker
# EXPOSE $PORT

# CMD [ "/fullstack-docker" ]