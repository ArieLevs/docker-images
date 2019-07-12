#!/bin/sh

LATEST_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)

docker build \
    --build-arg KUBECTL_VERSION=${LATEST_VERSION} \
    -t arielev/kubectl:${LATEST_VERSION} .
docker push arielev/kubectl:${LATEST_VERSION}
