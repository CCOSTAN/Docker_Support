#!/bin/bash
sudo apt-get update && sudo apt-get upgrade

# Navigate to the directory
cd /home/hass/docker_files

# Pull the latest images
docker-compose pull

# Only recreate containers if there are updated images
docker-compose up -d --remove-orphans --no-recreate

# Clean up unused Docker resources
docker system prune -fa
docker volume prune -f
docker image prune -fa

# Reattach to the container
docker attach --sig-proxy=false hass
