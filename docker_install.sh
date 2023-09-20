#!bin/bash
#Author: Asongalem Achanbeng Achankia
#Date: 05/09/2023
sudo apt update -y
sudo apt install docker.io -y
sudo service docker start
sudo docker info
sudo hostnamectl set-hostname docker
sudo su - ubuntu
sudo usermod -aG docker ubuntu

