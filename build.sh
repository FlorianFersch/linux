#!/bin/bash

IMAGE=linux-cx2072x

docker build -t ${IMAGE} .

docker rm $(docker ps -aq --filter name=${IMAGE})

docker create --name ${IMAGE} ${IMAGE}

docker cp ${IMAGE}:/root/build ../

docker rm $(docker ps -aq --filter name=${IMAGE})
