# :whale: Docker Stacks
This repository provides the following Docker Stacks:

- Traefik -- [Docker Hub](https://hub.docker.com/_/traefik) - [GitHub](https://github.com/traefik/traefik)
- ownCloud Infinite Scale -- [Docker Hub](https://hub.docker.com/r/owncloud/ocis) - [GitHub](https://github.com/owncloud/ocis)
- Syncthing -- [Docker Hub](https://hub.docker.com/r/syncthing/syncthing) - [GitHub](https://github.com/syncthing/syncthing)
- Baikal -- [Docker Hub (*unofficial*)](https://hub.docker.com/r/ckulka/baikal) - [GitHub](https://github.com/sabre-io/Baikal)

It is also possible to combine these stacks to host the necessary services on a server or device.

## Traefik
Traefik is a HTTP reverse proxy and load balancer. Traefik is used to reach different services with different domains or URLs. Also make sure to change the email address of the ACME certificate resolver in `traefik.yml`.

## ownCloud Infinite Scale
ownCloud Infinite Scale is a revised and modernized version of ownCloud 10. In addition to ownCloud Infinite Scale, Apache Tika is also installed. Apache Tika indexes the content of documents so that they can be searched with ownCloud Infinite Scale.

## Syncthing
Syncthing is a tool for synchronizing data between different devices in real time.

## Baikal
Baikal is a tool for synchronizing appointments and contacts across multiple devices.

## Install a Docker Stack
You can use the install script `install.sh` to install a Docker Stack. The install script supports the following parameters:

- `-d`, `--debug`: Shows the configuration for the Docker Stack.
- `-h`, `--help`: Shows the help of the install script.
- `-i`, `--install`: Installs the Docker Stack with all prerequisites.
- `-v`, `--version`: Shows the version of the services.

## Environment Variables
The services can use the following environment variables. Before installing, make sure you have customised the environment variables in the `.env` file next to the install script of the Docker Stack.

- `SERVER_DOMAIN`: The domain to access the instance of the Docker Stack.