#!/bin/bash
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl start docker
sudo systemctl status docker
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube -y
sudo apt install qemu-kvm libvirt-daemon-system bridge-utils -y
sudo usermod -aG docker $USER
sudo systemctl restart docker
minikube start --driver=docker
docker info
minikube start 
minikube kubectl -- get po -A
