#!/bin/sh

docker build \
    --network=host \
    -t ${1}/arielev/ansible:ansible-alpine .
docker push ${1}/arielev/ansible:ansible-alpine
