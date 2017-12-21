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

You can now access [localhost:3001/web](http://localhost:3001/web) for your **Plex** server, and [localhost:5001](http://localhost:5001) for your **transmission** client.

## Roadmap

* [ ] Use [nginx](https://hub.docker.com/_/nginx/) for routing to avoid always writing the port.
* [ ] Add support for automatically downloading torrents from RSS feed.
