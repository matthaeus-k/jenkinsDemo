#!/bin/bash 

echo "Hello World war 파일 톰캣 경로"
sudo mkdir -p /var/webapps/
sudo rm -rf /var/webapps/*
sudo find . -name "*-latest".war -exec cp {} /var/webapps/ROOT.war \;

