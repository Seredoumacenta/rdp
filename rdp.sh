# rdp
#!usr/bin/bash
mkdir ubuntu
cd ubuntu
sudo apt-get update -yy
sudo apt-get install ca-certificates curl gnupg -yy
sudo install -m 0755 -d /etc/apt/keyrings -yy
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg -yy
sudo chmod a+r /etc/apt/keyrings/docker.gpg -yy
sudo apt-get update -yy
sudo service docker start
sudo docker run hello-world
docker pull ubuntu:latest
docker ps -a
docker ps
docker image ls
docker images
docker network
docker inspect bridge
docker build
docker run -it ubuntu
apt-get update && apt-get install -y openssh-server
apt-get install -y iputils-ping && apt-get install -y net-tools
mkdir /var/run/sshd
echo 'root:yaya' | chgpasswd
set -i 's/#*PermitRootLogin yes/g' /etc/ssh/sshd_config
