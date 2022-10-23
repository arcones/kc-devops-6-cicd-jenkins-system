#!/usr/bin/env bash

## Install dependendencies
sudo apt update && sudo apt upgrade -y && sudo apt install docker docker-compose git tree net-tools -y

## Configure github access

ssh-keygen -t rsa -C "jenkins" -N "" -f ~/.ssh/id_rsa && eval "$(ssh-agent -s)"

echo "COPY THIS ADD ADD IT TO YOU GITHUB ACCOUNT!!"
echo
echo
echo
cat ~/.ssh/id_rsa.pub
echo
echo
echo

## Add permissions to use docker without sudo
sudo groupadd docker ; sudo gpasswd -a $USER docker && newgrp docker