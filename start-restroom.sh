#!/bin/sh

RESTROOM_CONTAINER_NAME=$1

echo "Starting restroom instance"
docker run --name $RESTROOM_CONTAINER_NAME --publish 3000:3000 -v "/home/runner/work/restroom-github-action/restroom-github-action/contracts":"/app/contracts" --detach ghcr.io/albertolerda/restroom-github-action:main

