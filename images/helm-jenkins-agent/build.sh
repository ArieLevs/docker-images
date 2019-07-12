#!/bin/sh

VERSION="2.14.0"

docker build \
    --build-arg HELM_VERSION=${VERSION} \
    -t arielev/helm:${VERSION} .
docker push arielev/helm:${VERSION}
