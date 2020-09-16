#!/usr/bin/env bash

echo "COMPOSE_PROJECT_NAME: ${COMPOSE_PROJECT_NAME}"

docker-sync start && echo "\n docker-sync is initially indexing files. It may take some minutes, until code changes take effect"

dev-ops/docker/containers/scriptcreator.sh
docker-compose build && docker-compose up -d
wait

echo "All containers started successfully"
echo "Web server IP: http://localhost:8083"
