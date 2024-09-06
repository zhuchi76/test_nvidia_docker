# test_nvidia_docker github repo

## Install nvidia-driver & CUDA & cuDNN
https://medium.com/@scofield44165/ubuntu-20-04%E4%B8%AD%E5%AE%89%E8%A3%9Dnvidia-driver-cuda-11-4-2%E7%89%88-cudnn-install-nvidia-driver-460-cuda-11-4-2-cudnn-6569ab816cc5

## Download the repo
```bash
git clone git@github.com:zhuchi76/test_nvidia_docker.git
```

## Install docker
```bash
source install_docker.sh
```

## Install nvidia-docker2
```bash
source install_nvidia_docker.sh
```

## RUN the docker image
```bash
source docker_run.sh
```

## Test pytorch gpu
```bash
python3 test_pytorch_gpu.py
```
