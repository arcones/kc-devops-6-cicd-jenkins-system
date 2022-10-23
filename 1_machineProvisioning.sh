#!/usr/bin/env bash

## Install dependendencies
sudo apt update && sudo apt upgrade -y && sudo apt install docker docker-compose git tree net-tools -y


## Add permissions to use docker without sudo
sudo groupadd docker ; sudo gpasswd -a $USER docker && newgrp docker