run_it() {
  #sudo docker run --detach \
  sudo docker run  \
    --name $CONTAINER_NAME \
    --restart 'no' \
    --hostname gitlab.example.com \
    --publish 443:443 \
    --publish 80:80 \
    --publish 22:22 \
    --volume /nothing/service/gitlab/config:/etc/gitlab \
    --volume /nothing/service/gitlab/logs:/var/log/gitlab \
    --volume /nothing/service/gitlab/data:/var/opt/gitlab \
    $IMAGE_NAME
}

LOCAL_GITLAB_HOME=$HOME/gitlab_9.5.10
CONTAINER_NAME=gitlab_9.5.10
IMAGE_NAME=gitlab/gitlab-ce:9.5.10-ce.0
fuck_it() {
  sudo docker run --detach \
    --name $CONTAINER_NAME \
    --restart 'no' \
    --hostname gitlab.example.com \
    --publish 443:443 \
    --publish 80:80 \
    --publish 22:22 \
    --volume $LOCAL_GITLAB_HOME/config:/etc/gitlab \
    --volume $LOCAL_GITLAB_HOME/logs:/var/log/gitlab \
    --volume $LOCAL_GITLAB_HOME/data:/var/opt/gitlab \
    $IMAGE_NAME
}

shit_it() {
  #sudo docker run --detach \
  sudo docker run  \
    --name $CONTAINER_NAME \
    --restart 'no' \
    --hostname gitlab.example.com \
    --publish 443:443 \
    --publish 80:80 \
    --publish 22:22 \
    $IMAGE_NAME
}


#run_it
#shit_it
fuck_it
