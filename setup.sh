echo "-> Creating folders"

mkdir ~/mediacenter
mkdir ~/mediacenter/plex_config
mkdir ~/mediacenter/sonarr_config
mkdir ~/mediacenter/downloads
mkdir ~/mediacenter/downloads/series

echo "-> Creating nginx configuration"

source .env

PLEX_DOMAIN=$PLEX_DOMAIN TRANSMISSION_DOMAIN=$TRANSMISSION_DOMAIN SONARR_DOMAIN=$SONARR_DOMAIN \
  erb ./nginx/nginx.conf.erb > ./nginx/nginx.conf

echo "\nDone!"
