#!/bin/bash

# arguments:
# 1 = the directory to search in
# 2 = the file type to look for (if it doesn't exist, directory is deleted)
#   file type without the . (i.e: mp3, flac, mp4)
find "$1" -mindepth 1 -type d |
  while read -r dt; do
    find "$dt" -mindepth 1 -type d | read -r && continue
    find "$dt" -iname "*.$2" -type f | read -r && continue
    echo DELETE "$dt"
    rm -rfv "$dt"
  done
