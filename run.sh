#!/bin/sh
docker run -d --name jenkins -p8080:8080 kristinakr/jenkins
docker run -d --name sonar -p9000:9000 kristinakr/sonar

docker network create jenkins_network
docker network connect jenkins_network jenkins
docker network connect --ip 172.23.0.3 jenkins_network sonar
