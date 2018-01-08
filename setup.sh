echo "-> Creating folders"

DOWNLOADS_FOLDER=${DOWNLOADS_FOLDER:-~/mediacenter/downloads}

mkdir ~/mediacenter > /dev/null 2>&1
mkdir ~/mediacenter/plex_config > /dev/null 2>&1
mkdir ~/mediacenter/sonarr_config > /dev/null 2>&1
mkdir $DOWNLOADS_FOLDER > /dev/null 2>&1
mkdir $DOWNLOADS_FOLDER/series > /dev/null 2>&1

echo "-> Creating nginx configuration"

source .env

PLEX_DOMAIN=$PLEX_DOMAIN \
  TRANSMISSION_DOMAIN=$TRANSMISSION_DOMAIN \
  SONARR_DOMAIN=$SONARR_DOMAIN \
  erb ./nginx/nginx.conf.erb > ./nginx/nginx.conf

echo "\nDone!"

echo "\nYou can now run"
echo "\n  DOWNLOADS_FOLDER=${DOWNLOADS_FOLDER} docker-compose up"
echo "\nto get your mediacenter up and running. Enjoy!"
