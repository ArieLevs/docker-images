#!/bin/sh

VERSION="2.14.0"

docker build \
    --build-arg HELM_VERSION=${VERSION} \
    -t ${1}/arielev/helm:${VERSION} .
docker push ${1}/arielev/helm:${VERSION}
