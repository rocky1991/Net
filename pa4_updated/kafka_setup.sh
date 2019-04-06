#!/bin/bash

sudo apt update
sudo apt install default-jdk
sudo apt -y install iproute2
sudo apt -y install iperf3

echo "Setting up clock sync"
sudo timedatectl set-ntp no
sudo apt install ntp
sudo service ntp restart

python3 modify_server_config.py ./kafka2.12-2.20/config/server-properties
# sudo apt update
# echo update