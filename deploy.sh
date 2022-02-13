#!/bin/bash 

echo "Hello World"
sudo mkdir -p /usr/local/tomcat
sudo mkdir -p /opt/node
sudo wget -O node-v14.19.0-linux-arm64.tar.gz https://nodejs.org/download/release/latest-v14.x/node-v14.19.0-linux-arm64.tar.gz
sudo unzip -d /opt/node node-v14.19.0-linux-arm64.tar.gz