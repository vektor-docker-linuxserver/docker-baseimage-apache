#!/bin/bash
mkdir -p /config/apache/site-confs /config/www /config/log/apache /config/key



if [ ! -f "/config/apache/apache2.conf" ]; then
cp /defaults/apache2.conf /config/apache/apache2.conf
fi

if [ ! -f "/config/apache/ports.conf" ]; then
cp /defaults/ports.conf /config/apache/ports.conf
fi

if [ ! -f "/config/apache/site-confs/default" ]; then
cp /defaults/default /config/apache/site-confs/default
fi

if [[ $(find /config/www -type f | wc -l) -eq 0 ]]; then
cp /defaults/index.html /config/www/index.html
fi

chown -R abc:abc /config
chown -R abc:abc /var/lib/apache2

