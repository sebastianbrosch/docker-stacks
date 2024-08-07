export SERVER_DOMAIN=cloud.sebastianbrosch.de
export ADMIN_PASSWORD=admin
export SERVICE_ACCOUNT_ID=$(uuidgen)
password=$(openssl passwd -6 $(uuidgen))
export SERVICE_ACCOUNT_SECRET=${password:25:25}

# print generated information
echo "Service Account ID: $SERVICE_ACCOUNT_ID"
echo "Service Account Secret: $SERVICE_ACCOUNT_SECRET"

# create the folders for configuration and data
mkdir -p config data
chown 1000:1000 config data

# deploy the docker stack
docker stack deploy -c docker-compose.yml owncloud