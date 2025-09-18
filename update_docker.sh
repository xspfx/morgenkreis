#!/usr/bin/env bash

# build the productive container
docker build --target dev_image -t 3tr4xx/python_playground:amd64 -f ./docker/Dockerfile .
docker push 3tr4xx/python_playground:amd64
