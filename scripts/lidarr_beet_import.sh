#!/bin/bash
# shellcheck disable=SC2154

set -e

# THIS SECTION IS FOR TESTING, ON INITIAL SETUP, COMMENT CODE BELOW THIS SECTION
# RUN TESTS, THEN UNCOMMENT
if [ "${lidarr_eventtype}" == "Test"]; then
  echo "#--------------------------------------------------------------------------------------------" \
    >/config/test_script.txt
  echo "Event type is: ${lidarr_eventtype}" >>/config/test_script.txt
  echo "#--------------------------------------------------------------------------------------------" \
    >>/config/test_script.txt
  exit 0
fi
# END TEST SECTION

################################################################
# BEGIN IMPORT
BEET_CONFIG="/config/config.yaml"

echo "Added track paths: $lidarr_addedtrackpaths"
lidarr_first_track=$(echo "$lidarr_addedtrackpaths" | cut -d '|' -f1)
lidarr_album_path=$(dirname "$lidarr_first_track")

echo "#--------------------------------------------------------------------------------------------" \
  >>/config/test_script.txt
echo "Path: $lidarr_album_path" >>/config/test_script.txt
echo "Album MBID: $lidarr_album_mbid" >>/config/test_script.txt
echo "Release MBID: $lidarr_albumrelease_mbid" >>/config/test_script.txt
echo "#--------------------------------------------------------------------------------------------" \
  >>/config/test_script.txt

echo "#--------------------------------------------------------------------------------------------"
echo "Running beet import"
echo "#--------------------------------------------------------------------------------------------"
docker --config "/config/.docker" exec beets beet -c $BEET_CONFIG update "path:$lidarr_album_path" || true
docker --config "/config/.docker" exec beets beet -c $BEET_CONFIG import -q --search-id "$lidarr_albumrelease_mbid" "$lidarr_album_path"

#Update  Lidarr

FILE=/config/config.xml
until test -f $FILE; do sleep 1; done
API=$(grep -oP '(?<=<ApiKey>)(.*)(?=</ApiKey>)' /config/config.xml)
curl -s "http://localhost:8686/lidarr/api/v1/command?apikey=$API" -X POST -d "{'name': 'ReScanArtist', 'artistID': $$lidarr_artist_id}" >/dev/null

echo "#--------------------------------------------------------------------------------------------" \
  >>/config/test_script.txt
echo "Completed successfully" >>/config/test_script.txt
echo "#--------------------------------------------------------------------------------------------" \
  >>/config/test_script.txt
################################################################
