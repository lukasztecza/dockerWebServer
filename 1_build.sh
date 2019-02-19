#!/bin/bash
CURRENT_DIR=$(dirname $0)
docker build -t docker-web-server "$CURRENT_DIR/."
