#!/bin/bash

docker network create -d overlay --attachable elk-network

docker stack deploy --compose-file ../elasticsearch/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../es-proxy/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../kibana/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../logstash/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../filebeat/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../curator/swarm/swarm.yml elk-demo
docker stack deploy --compose-file ../elastalert/swarm/swarm.yml elk-demo
