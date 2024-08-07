# set the ip or domain to access the reverse proxy.
export SERVER_DOMAIN=proxy.example.org
export TRAEFIK_USERNAME=traefik
password=password
export TRAEFIK_PASSWORD=$(openssl passwd -apr1 ${password})

# create network and stack.
docker network inspect traefik-public >/dev/null 2>&1 || docker network create --driver=overlay traefik-public
docker stack deploy -c docker-compose.yml traefik