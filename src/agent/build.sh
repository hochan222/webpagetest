absolutePath="/src/agent"
pwd="$(pwd)$absolutePath" 

echo "$pwd"

chmod u+x "$pwd/script.sh"
docker buildx build --platform=linux/amd64 -t local-wptagent -f "$pwd/Dockerfile" .
