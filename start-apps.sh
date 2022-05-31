#!/bin/bash

echo "--------------------------------------------"
echo "Clearing unused networks"
echo "--------------------------------------------"
sleep 2
sudo docker network prune -f
sudo docker volume prune -f

echo "--------------------------------------------"
echo "Creating main applications                  "
echo "--------------------------------------------"
sleep 2
(sudo docker compose pull &&
  sudo docker compose up -d --remove-orphans)

echo "--------------------------------------------"
echo "Removing non-used images"
echo "--------------------------------------------"
sleep 2
sudo docker image prune -f
