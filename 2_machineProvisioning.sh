#!/usr/bin/env bash

## Test docker without sudo
docker run hello-world

## Add password to ubuntu user
echo "SET PASSWORD FOR ubuntu USER IN YOUR MACHINE, IT WILL BE REQUIRED AFTERWADS"

sudo passwd ubuntu


## Clone repo with agents
git clone https://github.com/arcones/kc-devops-cicd-6-jenkins-system.git

cd kc-devops-cicd-6-jenkins-system

## Prepare jenkins volume
mkdir jenkins_home

## Open docker remote API
sudo mv docker.service /lib/systemd/system/docker.service && systemctl daemon-reload && service docker restart

curl http://localhost:4243/version

## Login in docker
docker login

## Run jenkins
docker-compose up