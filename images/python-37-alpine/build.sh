#!/bin/sh

docker build \
    -t arielev/python:3.7-alpine .
docker push arielev/python:3.7-alpine
