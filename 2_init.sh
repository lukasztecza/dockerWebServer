#!/bin/bash
if [ "$1" == "" ]; then
    docker swarm init
else
    docker swarm init --advertise-addr $1
fi

if ! docker network ls | grep "default-docker-apps-network"; then
    docker network create -d overlay default-docker-apps-network
fi
