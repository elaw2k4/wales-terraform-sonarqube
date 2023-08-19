#!/bin/bash

# Install Docker
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $(whoami)

# Run SonarQube Docker container
docker run -d -p 9000:9000 -p 9092:9092 --name sonarqube \
  --restart unless-stopped \
  -v sonarqube_data:/opt/sonarqube/data \
  -v sonarqube_logs:/opt/sonarqube/logs \
  -v sonarqube_extensions:/opt/sonarqube/extensions \
  sonarqube:latest

echo "Waiting for SonarQube to start..."
sleep 30
IP_ADD="curl icanhazip.com"

echo "SonarQube is now accessible at $IP_ADD:9000"
