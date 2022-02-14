#!/bin/bash 

echo "Hello World war 파일 톰캣 경로"
sudo mkdir -p /var/webapps/
sudo rm -rf /var/webapps/*
sudo cp -p /var/lib/jenkins/workspace/Demo1/build/libs/Demo.war /var/webapps/ROOT.war
