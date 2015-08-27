#!/bin/bash

apt-get update -qq
apt-get --only-upgrade install \
apache2-mpm-worker libapache2-mod-fastcgi openssl php5 php5-cli php5-curl php5-fpm -qqy

