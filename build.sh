#!/bin/bash
set -e

docker build -t springboot-hc .
docker run -dit --name springboot-app -p 8888:8080 springboot-hc

docker ps
