#!/usr/bin/env bash
docker container rm -f matcha || true
docker container rm -f mysql	|| true
docker container rm -f pma || true
docker container rm -f jenkins || true
docker container rm -f nginx_redirect || true
docker image rm -f matcha
docker image rm -f mysql
docker image rm -f pma
docker image rm -f jenkins/jenkins
docker image prune -af
docker network rm -f matcha
