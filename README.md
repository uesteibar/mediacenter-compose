# mediacenter-compose

A docker setup to run a simple media center.

## Running locally

Clone the repo

```
git clone https://github.com/uesteibar/mediacenter-compose.git && cd mediacenter-compose
```

Setup the folders

```
./setup.sh
```

Run the containers

```
docker-compose up -d
```

You can now access [plex.localhost](http://plex.localhost) for your **Plex** server, and [torrent.localhost](http://torrent.localhost) for your **transmission** client.

## Roadmap

* [x] Use [nginx](https://hub.docker.com/_/nginx/) for routing to avoid always writing the port.
* [ ] Add support for automatically downloading torrents from RSS feed.
