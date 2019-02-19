#!/bin/bash
CURRENT_DIR=$(dirname $0)
docker stack deploy -c "$CURRENT_DIR/docker-compose.yml" docker-web-server
