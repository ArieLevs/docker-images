#!/bin/sh -xe

if [ -z "${pythonVersion:=}" ]; then # If 'pythonVersion' is unset
  pythonVersion=3.9-alpine
  echo "'pythonVersion' variable is not set, using python version ${pythonVersion}"
fi

if [ -z "${dockerRepo:=}" ]; then # If 'dockerRepo' is unset
  echo "'dockerRepo' variable is not set, doing nothing"
else # dockerRepo variable has some value
  if [ -z "${push:=}" ]; then # If 'push' is unset
    # Add --network host so docker in docker will not fail
    docker build \
      --network host \
      --build-arg PYTHON_VERSION=${pythonVersion} \
      -t ${dockerRepo}/arielev/python:${pythonVersion} .
    echo "build does not contain push variable, skipping docker push";
  else
    echo "push variable is set, pushing image to ${dockerRepo}";
    # Only jenkins should push images
    docker push ${dockerRepo}/arielev/python:${pythonVersion}
  fi
fi
