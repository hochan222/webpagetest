absolutePath="/src/server"
pwd="$(pwd)$absolutePath" 

# docker build for mac
# https://medium.com/@francis.john/local-webpagetest-using-docker-90441d7c2513
docker buildx build --platform=linux/amd64 -t local-wptserver -f "$pwd/Dockerfile" .
