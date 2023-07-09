#!/bin/bash
echo "Building image " $IMAGE
docker build --no-cache -t dreamerv3.$IMAGE -f  Dockerfile.$IMAGE $PWD
