#!/bin/bash
cd /home/hass/docker_files
docker-compose pull 
docker-compose down 
docker-compose up -d &
docker system prune -fa
