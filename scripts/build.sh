#!/bin/bash

docker build -t elk-demo-elasticsearch:latest ../elasticsearch/image/.
docker build -t elk-demo-es-proxy:latest ../es-proxy/image/.
docker build -t elk-demo-kibana:latest ../kibana/image/.
docker build -t elk-demo-logstash:latest ../logstash/image/.
docker build -t elk-demo-filebeat:latest ../filebeat/image/.
docker build -t elk-demo-curator:latest ../curator/image/.
docker build -t elk-demo-elastalert:latest ../elastalert/image/.