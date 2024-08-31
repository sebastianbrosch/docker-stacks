#!/bin/bash

# load all the environment variables from .env file.
set -a; source .env; set +a

# the password have to be encrypted.
export TRAEFIK_PASSWORD=$(openssl passwd -apr1 ${TRAEFIK_PASSWORD})

# create the network of the proxy.
docker network inspect traefik-public >/dev/null 2>&1 || docker network create --driver=overlay traefik-public

# deploy the docker stack.
docker stack deploy -c docker-compose.yml traefik
