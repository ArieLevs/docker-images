#!/bin/sh

VERSION=1.5.5

docker build \
    --build-arg MOSQUITTO_VERSION=${VERSION} \
    -t ${1}/arielev/mosquitto:${VERSION} .
docker push ${1}/arielev/mosquitto:${VERSION}
