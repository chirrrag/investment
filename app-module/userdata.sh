#!/bin/bash
set -ex

sudo yum update -y
sudo yum install -y docker

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user to docker group
sudo usermod -aG docker ec2-user

echo 'newgrp docker' >> /home/ec2-user/.bashrc

docker pull sapraji/investment:latest
docker run -d -p 8081:8081 sapraji/investment:latest
