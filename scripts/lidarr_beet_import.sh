#!/bin/bash
# shellcheck disable=SC2154

set -e

BEET_CONFIG="/config/config.yaml"

echo "$lidarr_addedtrackpaths"
lidarr_first_track=$(echo "$lidarr_addedtrackpaths" | cut -d '|' -f1)
lidarr_album_path=$(dirname "$lidarr_first_track")
echo "Path: $lidarr_album_path"
echo "Album MBID: $lidarr_album_mbid"
echo "Release MBID: $lidarr_albumrelease_mbid"
echo "Running beet import"

docker --config "/config/.docker" exec beets beet -c $BEET_CONFIG update "path:$lidarr_album_path" || true
docker --config "/config/.docker" exec beets beet -c $BEET_CONFIG import -q --search-id "$lidarr_albumrelease_mbid" "$lidarr_album_path"
