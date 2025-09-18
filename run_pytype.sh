#!/bin/env bash

showHelp() {
echo "usage $0 [-h|-i]"
echo "parameter:"
echo "-h ... show help"
echo "-i ... specify docker image to use for docker builds"
}

# default values
VAR_USE_DOCKER=false
DOCKER_IMAGE=

OPTSTRING="hi:"
while getopts ${OPTSTRING} opt; do
   case ${opt} in
    h)
      showHelp
      exit 0
      ;;
    i)
      VAR_USE_DOCKER=true
      DOCKER_IMAGE=${OPTARG}
      ;;
    *)
      showHelp
      exit 0
  esac
done

CMD="pytype"

if [ ${VAR_USE_DOCKER} = "true" ]; then
  docker pull "${DOCKER_IMAGE}"
  docker run -v ./:/extdata -it "${DOCKER_IMAGE}" ${CMD}
else
  ${CMD}
fi
