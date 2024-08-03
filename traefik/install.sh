# set the ip or domain to access the reverse proxy.
export SERVER_IP=proxy.example.com
export TRAEFIK_USERNAME=traefik
export TRAEFIK_PASSWORD=password
TRAEFIK_PASSWORD=$(openssl passwd -apr1 $TRAEFIK_PASSWORD)

# create network and stack.
docker network inspect traefik-public >/dev/null 2>&1 || docker network create --driver=overlay traefik-public
docker stack deploy -c docker-compose.yml traefik