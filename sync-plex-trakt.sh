#!/bin/sh

(
  cd utilities
  docker compose run --rm plextraktsync
)
