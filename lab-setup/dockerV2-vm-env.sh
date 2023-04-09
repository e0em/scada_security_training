#!/bin/bash
# Uninstall old version
sudo apt-get remove docker docker-engine docker.io containerd runc 
# install using the apt repository
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg
# Add Docker's official GPG key
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# Set up the repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# install Docker Engine, Containerd, and Dcoker Compose.
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin 
  
# Start docker and enable it to start after the system reboot:
sudo systemctl enable --now docker

# Optionally give any user administrative privileges to docker:
sudo usermod -aG docker seed

