#!/bin/sh -e

STRESS_NG_VERSION="0.11.02"

docker build \
    --build-arg STRESS_NG_VERSION=${STRESS_NG_VERSION} \
    -t "${1}/arielev/stress-ng:latest" \
    -t "${1}/arielev/stress-ng:${STRESS_NG_VERSION}" .

# Test docker
docker run arielev/stress-ng --version

docker push "${1}/arielev/stress-ng:${STRESS_NG_VERSION}"
docker push "${1}/arielev/stress-ng:latest"
