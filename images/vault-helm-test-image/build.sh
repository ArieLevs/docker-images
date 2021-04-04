#!/bin/sh -xe

BATS_VERSION=1.3.0
HELM_VERSION=3.5.3
YQ_VERSION=2.12.0

if [ -z "${dockerRepo:=}" ]; then # If 'dockerRepo' is unset
  echo "'dockerRepo' variable is not set, doing nothing"
else # dockerRepo variable has some value
  if [ -z "${push:=}" ]; then # If 'push' is unset
    # Add --network host so docker in docker will not fail
    docker build \
    --network host \
    --build-arg BATS_VERSION=${BATS_VERSION} \
    --build-arg HELM_VERSION=${HELM_VERSION} \
    --build-arg YQ_VERSION=${YQ_VERSION} \
    -t ${dockerRepo}/arielev/vault-helm-test:${BATS_VERSION} .
    echo "build does not contain push variable, skipping docker push";
  else
    echo "push variable is set, pushing image to ${dockerRepo}";
    # Only jenkins should push images
    docker push ${dockerRepo}/arielev/vault-helm-test:${BATS_VERSION}
  fi
fi
