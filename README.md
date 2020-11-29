## PURPOSE

Collection of docker apps that I run on my ubuntu server.

## Sabnzbd

Requires to edit the `$DOCKER_DIR/sabnzbd/app/sabnzbd.ini` file to whitelist the domain since by default there's no authentication and it's being access via reverse-proxy.

Pick your favorite editor and edit the following line in that file.

```ini
host_whitelist = sabnzbd, <YOURDOMAIN.COM>
```

Access sabnzbd at `https://<yourdomain.com>/sabnzbd`

## NZBGet

The default credentials for nzbget are user: **nzbget** password: **tegbzn6789**

Access nzbget at `https://<yourdomain.com>/nzbget`

## Deluge

Default password is `deluge`

## Qbittorrent

Default username is `admin` and password is `adminadmin`
