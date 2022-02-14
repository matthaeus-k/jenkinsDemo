#!/bin/bash 

echo "Hello World war 파일 톰캣 경로"
sudo mkdir -p /var/webapps/
sudo copy /var/lib/jenkins/workspace/Demo1/build/libs/*.war /var/webapps/ROOT.war
