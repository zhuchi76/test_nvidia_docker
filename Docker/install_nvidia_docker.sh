# Docker
sudo apt-get update
# sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
docker --version

# Put the user in the docker group
sudo usermod -a -G docker $USER
newgrp docker

# Nvidia Docker
sudo apt install curl
# distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
distribution="ubuntu20.04"
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list


sudo apt-get update 
sudo apt-get install -y nvidia-docker2
sudo systemctl restart docker

# Check Docker image
docker pull nvidia/cuda:12.2.2-base-ubuntu20.04
docker run --rm --gpus all nvidia/cuda:12.3.1-base-ubuntu20.04 nvidia-smi
docker run -it --gpus all nvidia/cuda:12.3.1-base-ubuntu20.04 bash

## Erase all Docker images [!!! CAUTION !!!]
# docker rmi -f $(docker images -a -q)

## Erase one Docker image  [!!! CAUTION !!!]
# docker ps
# docker rmi -f image_id

