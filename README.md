# Docker Stacks
This repository provides the following Docker stacks:

- Traefik
- ownCloud Infinite Scale
- Syncthing
- Baikal

## Traefik Stack
Traefik is a HTTP reverse proxy and load balancer. Traefik is used to access the different stacks.

## ownCloud Infinite Scale
ownCloud Infinite Scale is a revised and modernized version of ownCloud 10. Apache Tika is also installed with this stack. With Apache Tika, the contents of documents can be indexed so that they can be searched with ownCloud Infinite Scale. You can use the installation script `install.sh` to install the Docker stack. Make sure that you change the environment variables in the `.env` file next to the installation script:

- `ADMIN_PASSWORD`: The password of the admin user account.
- `SERVER_DOMAIN`: The domain to access the instance of ownCloud Infinite Scale.