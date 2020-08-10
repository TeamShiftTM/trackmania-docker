#!/bin/sh

set -x 
set -e



if [ -f "/evosc/config/server.config.json" ]; then
    printf "\nn\nn\nn" | php esc run
else
    printf "${SERVER_LOGIN}\n${SERVER_HOST}\n${RPC_PORT}\n${RPC_LOGIN}\n${RPC_PASSWORD}\n${MAP_LIST}\n${MYSQL_HOST}\n${MYSQL_DB}\n${MYSQL_USER}\n${MYSQL_PASSWORD}\nn\nn\nn" | php esc run
fi

