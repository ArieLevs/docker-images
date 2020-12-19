#!/bin/sh

VERSION="3.4.2"

docker build \
    --build-arg HELM_VERSION=${VERSION} \
    -t ${1}/arielev/helm:${VERSION} . \
    -t ${1}/arielev/helm:latest
docker push ${1}/arielev/helm:${VERSION}
docker push ${1}/arielev/helm:latest
