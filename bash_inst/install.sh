#!/usr/bin/env bash
docker network create matcha
docker build -t mysql mysql/
docker build -t matcha server/
docker run -d --net matcha --restart always -p 3306:3306 --name mysql mysql
docker run -d --net matcha --restart always -v "$(pwd):/matcha" -p 443:443 --name matcha matcha
docker run --name pma --net matcha --restart always -d --link mysql:db -p 8081:80 phpmyadmin/phpmyadmin
docker run -d --name jenkins --restart always -u root -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /root/jenkins_home:/var/jenkins_home jenkins/jenkins:lts
docker run -d --net matcha --name nginx_redirect --restart always -e SERVER_REDIRECT=matcha.mcdir.ru -e SERVER_REDIRECT_SCHEME=https -p 80:80 schmunk42/nginx-redirect

