#!/bin/sh -xe

VERSION=v1.0.2

if [ -z "${dockerRepo:=}" ]; then # If 'dockerRepo' is unset
  echo "'dockerRepo' variable is not set, doing nothing"
else # dockerRepo variable has some value
  if [ -z "${push:=}" ]; then # If 'push' is unset
    # Add --network host so docker in docker will not fail
    docker build \
      --network host \
      --build-arg ARGOCD_CLI_VERSION=${VERSION} \
      -t ${dockerRepo}/arielev/argocd-cli:${VERSION} .
    echo "build does not contain push variable, skipping docker push";
  else
    echo "push variable is set, pushing image to ${dockerRepo}";
    # Only jenkins should push images
    docker push ${dockerRepo}/arielev/argocd-cli:${VERSION}
  fi
fi
