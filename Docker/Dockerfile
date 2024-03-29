# Start from the NVIDIA CUDA base image
FROM nvidia/cuda:12.2.2-base-ubuntu20.04

ENV SHELL=/bin/bash \
    USER=arg \
    UID=1000

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${UID} \
    ${USER} 
    
ENV HOME=/home/${USER}

WORKDIR /home/${USER}

RUN cp /root/.bashrc ~/.bashrc

RUN echo "root:root" | chpasswd
RUN echo "${USER}:111111" | chpasswd

# Install Python 3 and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Install PyTorch and torchvision
RUN pip3 install torch torchvision torchaudio

RUN chown -R $USER:$USERS ${HOME}/
RUN echo "root ALL=(ALL)  ALL" > /etc/sudoers

USER ${USER}

WORKDIR ${HOME}
CMD ["bash"]