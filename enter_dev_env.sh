#!/bin/sh
export IMAGE=dev
export CONTAINER=dev
export NAME=dreamerv3

docker stop $NAME.$CONTAINER

if [ "$1" = "build" ]; then
    # docker rmi $NAME.$IMAGE
    ./utils/docker/build.sh
fi

./utils/docker/run.sh
./utils/docker/enter.sh
