#!/bin/sh -xe

VERSION=2.2.1

if [ -z "${dockerRepo:=}" ]; then # If 'dockerRepo' is unset
  echo "'dockerRepo' variable is not set, doing nothing"
else # dockerRepo variable has some value
  if [ -z "${push:=}" ]; then # If 'push' is unset
    # Add --network host so docker in docker will not fail
    docker build \
    --network host \
    --build-arg RETIRE_VERSION=${VERSION} \
    -t ${dockerRepo}/arielev/retirejs:${VERSION} .
    echo "build does not contain push variable, skipping docker push";
  else
    echo "push variable is set, pushing image to ${dockerRepo}";
    # Only jenkins should push images
    docker push ${dockerRepo}/arielev/retirejs:${VERSION}
  fi
fi
