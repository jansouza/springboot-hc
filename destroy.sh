#!/bin/bash
set -e

docker stop springboot-app
docker rm springboot-app
docker rmi springboot-hc
