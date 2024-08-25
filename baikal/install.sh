#!/bin/bash

# change these values to your needs.
export SERVER_DOMAIN=baikal.example.com

# create the persistent directories for baikal.
# you also have to set the ownership of these directories.
# see: https://github.com/ckulka/baikal-docker/blob/master/examples/docker-compose.localvolumes.yaml
mkdir -p config specific/db
chown -R 101:101 config specific

# deploy the docker stack.
docker stack deploy -c docker-compose.yml baikal
