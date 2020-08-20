#!/bin/sh -xe

LATEST_VERSION=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)

if [ -z "${dockerRepo:=}" ]; then # If 'dockerRepo' is unset
  echo "'dockerRepo' variable is not set, doing nothing"
else # dockerRepo variable has some value
  if [ -z "${push:=}" ]; then # If 'push' is unset
    # Add --network host so docker in docker will not fail
    docker build \
    --network host \
    --build-arg KUBECTL_VERSION=${LATEST_VERSION} \
    -t ${dockerRepo}/arielev/kubectl:${LATEST_VERSION} .
    echo "build does not contain push variable, skipping docker push";
  else
    echo "push variable is set, pushing image to ${dockerRepo}";
    # Only ci process should push images
    docker push ${dockerRepo}/arielev/kubectl:${LATEST_VERSION}
  fi
fi
