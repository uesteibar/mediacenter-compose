echo "-> Creating folders"

mkdir ~/mediacenter
mkdir ~/mediacenter/plex_config
mkdir ~/mediacenter/downloads

echo "-> Creating nginx configuration"

source .env

PLEX_DOMAIN=$PLEX_DOMAIN TRANSMISSION_DOMAIN=$TRANSMISSION_DOMAIN \
  erb ./nginx/nginx.conf.erb > ./nginx/nginx.conf

echo "\nDone!"
