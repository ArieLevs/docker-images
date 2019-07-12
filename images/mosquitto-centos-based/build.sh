#!/bin/sh

VERSION=1.5.5

docker build \
    --build-arg MOSQUITTO_VERSION=${VERSION} \
    -t arielev/mosquitto:${VERSION} .
docker push arielev/mosquitto:${VERSION}
