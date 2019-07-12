#!/bin/sh

docker build \
    -t ${1}/arielev/ansible:ansible-alpine .
docker push ${1}/arielev/ansible:ansible-alpine
