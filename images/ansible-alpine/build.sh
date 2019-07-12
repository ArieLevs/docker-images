#!/bin/sh

docker build \
    -t arielev/ansible:ansible-alpine .
docker push arielev/ansible:ansible-alpine
