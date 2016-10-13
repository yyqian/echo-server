#!/usr/bin/env bash
SOURCE_PORT=8080
TARGET_PORT=1989
IMAGE_NAME="yyqian/echo"
CONTAINER_NAME="echo"
# stop old build
docker stop ${CONTAINER_NAME} && docker rm ${CONTAINER_NAME}
# docker build
docker build -t ${IMAGE_NAME} .
# docker run
docker run -d \
-p ${TARGET_PORT}:${SOURCE_PORT} \
--name ${CONTAINER_NAME} \
${IMAGE_NAME}
# clean up dangling images
docker rmi $(docker images -f "dangling=true" -q)