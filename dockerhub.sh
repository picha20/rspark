#!/usr/bin/env bash

# docker login -u username -p password
USERNAME="jharner"
IMAGE=$1
REPONAME=$USERNAME/$IMAGE
TAG=$2

docker tag $IMAGE:latest $REPONAME:$TAG
docker push $REPONAME:$TAG
