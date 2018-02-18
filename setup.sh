echo "-> Creating folders"

DOWNLOADS_FOLDER=${DOWNLOADS_FOLDER:-~/mediacenter/downloads}

mkdir ~/mediacenter > /dev/null 2>&1
mkdir ~/mediacenter/sonarr_config > /dev/null 2>&1
mkdir $DOWNLOADS_FOLDER > /dev/null 2>&1
mkdir $DOWNLOADS_FOLDER/series > /dev/null 2>&1

echo "\nDone!"

echo "\nYou can now run"
echo "\n  DOWNLOADS_FOLDER=${DOWNLOADS_FOLDER} docker-compose up"
echo "\nto get your mediacenter up and running. Enjoy!"
