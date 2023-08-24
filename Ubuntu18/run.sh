CONTAINER_NAME=ubuntu1804forpwn;
docker build . -t ubuntu1804;
docker run -d -t --privileged --name=$CONTAINER_NAME ubuntu1804;
docker exec -it -u root $CONTAINER_NAME bash
