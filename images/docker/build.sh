#!/bin/sh

docker build \
    -t ${1}/arielev/docker:stable .
docker push ${1}/arielev/docker:stable
