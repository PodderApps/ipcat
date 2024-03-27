FROM golang:1.19.2-bullseye

ENV SERVICE_NAME ipcat

ENV ROOT /opt/$SERVICE_NAME

WORKDIR $ROOT

# Now add the entire source code tree
COPY . $ROOT

# get deps
RUN go get golang.org/x/net/http2