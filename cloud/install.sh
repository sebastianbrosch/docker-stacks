#!/bin/bash

# change these values to your needs.
export SERVER_DOMAIN=cloud.example.com
export ADMIN_PASSWORD=admin
export SERVICE_ACCOUNT_ID=$(uuidgen)

# the credentials for the service account are generated radomly.
# you don't have to know the credentials for the service account.
password=$(openssl passwd -6 $(uuidgen))
export SERVICE_ACCOUNT_SECRET=${password:25:25}

# print the credentials of the service account.
echo "Service Account ID: $SERVICE_ACCOUNT_ID"
echo "Service Account Secret: $SERVICE_ACCOUNT_SECRET"

# create the directories for configuration and data.
# you also have to set the ownership of these directories.
mkdir -p config data
chown 1000:1000 config data

# deploy the docker stack.
docker stack deploy -c docker-compose.yml owncloud