#!/bin/bash

echo "--------------------------------------------"
echo "Removing main applications                  "
echo "--------------------------------------------"
sleep 2
(sudo docker-compose down --remove-orphans)

echo "--------------------------------------------"
echo "Removing non-used images"
echo "--------------------------------------------"
sleep 2
sudo docker image prune -f

echo "--------------------------------------------"
echo "END"
echo "--------------------------------------------"
