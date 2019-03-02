#!/bin/bash
set -e
echo " starting the sonarqube server " 
sh /home/ubuntu/sonarqube-7.5/bin/linux-x86-64/sonar.sh start 

exec "$@"

