#!/bin/bash

# change these values to your needs.
export SERVER_DOMAIN=proxy.example.com
export TRAEFIK_USERNAME=traefik
export TRAEFIK_PASSWORD=traefik

# the password have to be encrypted.
export TRAEFIK_PASSWORD=$(openssl passwd -apr1 ${TRAEFIK_PASSWORD})

# create the network of the proxy.
docker network inspect traefik-public >/dev/null 2>&1 || docker network create --driver=overlay traefik-public

# deploy the docker stack.
docker stack deploy -c docker-compose.yml traefik
