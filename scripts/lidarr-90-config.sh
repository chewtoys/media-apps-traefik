#!/usr/bin/with-contenv bash

DOCKERVERSION="20.10.16"
curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz &&
  tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
    -C /usr/local/bin docker/docker &&
  rm docker-${DOCKERVERSION}.tgz
