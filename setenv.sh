#!/bin/env bash

ENV_FILE=.env

rm -f ${ENV_FILE}
touch ${ENV_FILE}

echo "USERNAME=$(whoami)" >> ${ENV_FILE}
echo "USER_UID=$(id -u)"  >> ${ENV_FILE}
echo "USER_GID=$(id -g)"  >> ${ENV_FILE}
