#!/bin/sh

docker build \
    -t ${1}/arielev/python:3.7-alpine .
docker push ${1}/arielev/python:3.7-alpine
