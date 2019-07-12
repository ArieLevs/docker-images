#!/bin/sh

VERSION=v1.0.2

docker build \
    --build-arg ARGOCD_CLI_VERSION=${VERSION} \
    -t arielev/argocd-cli:${VERSION} .
docker push arielev/argocd-cli:${VERSION}
