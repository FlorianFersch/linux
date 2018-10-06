
#!/bin/bash

IMAGE=linux-cx2072x

docker build .
docker cp ${IMAGE}-build-cont:/root/*.deb ../
