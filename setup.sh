docker pull webpagetest/server
docker pull webpagetest/agent

sh ./src/server/build.sh
sh ./src/agent/build.sh

docker image ls
