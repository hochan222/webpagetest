# remove container
docker rm -f $(docker ps -aq)
# remove images
docker rmi $(docker images -q)