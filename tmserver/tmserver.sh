#!/bin/sh
CONFIG_PATH=/tmserver/UserData/Config/

set -x 
set -e

cd $CONFIG_PATH
sed -i "s/<name><\/name>/<name>${SERVER_NAME}<\/name>/g" dedicated_cfg.txt

sed -i "s/<login><\/login>/<login>${SERVER_LOGIN}<\/login>/g" dedicated_cfg.txt
sed -i "s/<password><\/password>/<password><![CDATA[${SERVER_PASSWORD}]]><\/password>/g" dedicated_cfg.txt

cd /tmserver
./TrackmaniaServer /nodaemon /title=Trackmania /game_Settings=Matchsettings/maplist.txt /dedicated_cfg=dedicated_cfg.txt
