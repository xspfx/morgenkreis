#!/usr/bin/env bash

# build the productive container
docker build --target dev_image -t xspfx/morgenkreis_dev:latest -f ./docker/Dockerfile .
docker push xspfx/morgenkreis_dev:latest