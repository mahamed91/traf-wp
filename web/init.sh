#!/bin/bash
sudo apt update && sudo apt-get install unzip -y
docker network create web
echo Downloading WP
curl https://wordpress.org/latest.zip -o latest.zip
unzip latest.zip
docker build -t mahamed/traf-wp .

