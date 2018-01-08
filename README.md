# mediacenter-compose

A docker setup to run a simple media center.

## Running locally

Clone the repo

```
git clone https://github.com/uesteibar/mediacenter-compose.git && cd mediacenter-compose
```

Copy the `.env` file and customize the domain names

```
cp .env.sample .env
```

Setup the environment

You can set your download folders by using the `DOWNLOADS_FOLDER` env variable (default is `~/mediacenter/downloads`)

```
DOWNLOADS_FOLDER=/path/to/folder ./setup.sh
```

Run the containers

```
DOWNLOADS_FOLDER=/path/to/folder docker-compose up -d
```

You can now access:

* [plex.localhost](http://plex.localhost) for your **Plex** server (if you have any issue with streaming quality, you can fallback to `ip-address:3001`).
* [torrent.localhost](http://torrent.localhost) for your **transmission** client.
* [sonarr.localhost](http://sonarr.localhost) for your **sonarr** server.

## Roadmap

* [x] Use [nginx](https://hub.docker.com/_/nginx/) for routing to avoid always writing the port.
* [ ] Add support for automatically downloading torrents from RSS feed.
