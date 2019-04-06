#!/bin/bash

<<<<<<< HEAD
sudo apt update
sudo apt install default-jdk
sudo apt -y install python3-pip
sudo apt -y install iproute2
sudo apt -y install iperf3
mkdir ~/log

sudo apt install librdkafka-dev
pip3 install confluent-kafka 

echo "Setting up clock sync"
sudo timedatectl set-ntp no
sudo apt install ntp
sudo service ntp restart

# sudo apt update
# echo update
=======
# install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

sudo apt-get update

sudo apt-get install -y mongodb-org

# start MongoDB
sudo service mongod start
# sudo service mongod stop
# sudo service mongod restart
# mongo

# install pymongo
sudo apt install python3-pip
python3 -m pip install pymongo
>>>>>>> a2a77a00c32e9871336561f5899746f4e61d7325
