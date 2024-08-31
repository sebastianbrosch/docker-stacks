#!/bin/bash

# load all the environment variables from .env file.
set -a; source .env; set +a

# create the missing folders.
mkdir -p sync-folders
chown 1000:1000 sync-folders

# create stack.
docker stack deploy -c docker-compose.yml syncthing
