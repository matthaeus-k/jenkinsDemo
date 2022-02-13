#!/bin/bash
echo "Hello World"
mkdir -p /usr/local/tomcat
mkdir -p /opt/node
wget -O node-v14.19.0-linux-arm64.tar.gz https://nodejs.org/download/release/latest-v14.x/node-v14.19.0-linux-arm64.tar.gz
unzip -d /opt/node node-v14.19.0-linux-arm64.tar.gz