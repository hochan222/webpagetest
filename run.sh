docker run -d -p 4000:80 --rm local-wptserver

sleep 1s

docker run -d -p 4001:80 \
    --network="host" \
    -e "SERVER_URL=http://localhost:4000/work/" \
    -e "LOCATION=Test" \
    local-wptagent

open http://localhost:4000/install/
open http://localhost:4000/
