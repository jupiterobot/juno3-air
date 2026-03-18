#!/bin/bash
ORIGINAL_IMAGE=jupiterobot/juno3-air:latest
MY_IMAGE=juno3-air:mine
ID=$(docker image ls -q $ORIGINAL_IMAGE)
if [ -z "$ID" ]; then
    docker pull $ORIGINAL_IMAGE
else
    echo "$ORIGINAL_IMAGE already exists locally"
fi
if [ $? -gt 0 ]; then
    echo "Failed to pull image"
    exit 1
fi
ID=$(docker image ls -q $ORIGINAL_IMAGE)
docker tag $ID  $MY_IMAGE
docker rmi $ORIGINAL_IMAGE
