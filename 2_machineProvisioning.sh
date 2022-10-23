#!/usr/bin/env bash

## Test docker without sudo
docker run hello-world

## Add password to ubuntu user
echo
echo
echo "SET PASSWORD FOR ubuntu USER IN YOUR MACHINE, IT WILL BE REQUIRED AFTERWADS"
echo
echo

sudo passwd ubuntu


echo
echo
echo

## Clone repo with agents
git clone git@github.com:arcones/kc-devops-6-cicd-jenkins-system.git

cd kc-devops-6-cicd-jenkins-system

## Prepare jenkins volume
mkdir jenkins_home

## Open docker remote API
echo
echo
echo "PASSWORD FOR ubuntu USER WILL BE REQUIRED NOW!"
echo
echo
echo

sudo mv docker.service /lib/systemd/system/docker.service && systemctl daemon-reload && service docker restart

curl http://localhost:4243/version

## Run jenkins
docker-compose up