#!/usr/bin/env bash

_NETWORK=`netstat -rn | grep -E '^default|^0.0.0.0' | head -1 | awk '{print $NF}'`
_IP=`ifconfig $_NETWORK | grep 'inet ' | awk '{print $2}' | grep -Eo '([0-9]*\\.){3}[0-9]*'`

echo "Host IP address: $_IP"

docker run --rm -it \
    --entrypoint sh \
    -v $HOME/.php/:/atm \
    -v $HOME/.php/container.ini:/usr/local/etc/php/conf.d/atm.ini \
    -v "$(pwd)":/app \
    -e XDEBUG_CONFIG="remote_host=$_IP" \
    -w /app \
    php:7.3-alpine
