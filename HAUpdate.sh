#!/bin/bash
cd /home/hass/docker_files
docker-compose pull 
docker-compose down 
docker-compose up -d --remove-orphans   
docker system prune -fa
docker volume prune -f
docker image prune -fa

docker attach --sig-proxy=false hass
