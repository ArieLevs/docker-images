#!/bin/sh

VERSION=1.5.5
# libwebsockets
LWS_VERSION=2.4.2

docker build \
    --build-arg MOSQUITTO_VERSION=${VERSION} \
    --build-arg LWS_VERSION=${LWS_VERSION} \
    -t arielev/mosquitto-alpine:${VERSION} .
docker push arielev/mosquitto-alpine:${VERSION}
