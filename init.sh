#!/bin/bash
sudo apt update && sudo apt-get install git unzip -y > /dev/null
curl -L get.docker.com | sudo bash
docker network create web
mkdir -p /opt/mysql && mkdir -p /opt/www
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/mahamed91/traf-wp.git
cd traf-wp
docker-compose -f v2.yaml up -d
# echo Downloading WP
#curl https://wordpress.org/latest.zip -o latest.zip
#unzip latest.zip
#docker build -t mahamed/traf-wp .

