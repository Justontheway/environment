#!/bin/bash

LOCAL_NGINX_HOME=$HOME/nginx
CONTAINER_NAME=nginx
IMAGE_NAME=nginx:latest
run_it() {
  sudo docker run --detach \
    --name $CONTAINER_NAME \
    --restart 'no' \
    --hostname nginx.example.com \
    --publish 888:80 \
    --volume $LOCAL_NGINX_HOME/conf/nginx.conf:/etc/nginx/nginx.conf:ro \
    --volume $LOCAL_NGINX_HOME/conf/conf.d:/etc/nginx/conf.d:ro \
    --volume $LOCAL_NGINX_HOME/log:/var/log/nginx \
    --volume $LOCAL_NGINX_HOME/sites:/service/nginx/sites \
    $IMAGE_NAME
}

run_it
