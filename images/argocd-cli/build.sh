#!/bin/sh

VERSION=v1.0.2

docker build \
    --build-arg ARGOCD_CLI_VERSION=${VERSION} \
    -t ${1}/arielev/argocd-cli:${VERSION} .
docker push ${1}/arielev/argocd-cli:${VERSION}
