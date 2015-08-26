#!/bin/bash

if [ ! -d "/config/log" ]; then
mkdir -p /config/log
chown -R abc:abc /config/log
fi

chown -R abc:abc /config
chown -R abc:abc /var/lib/apache2

