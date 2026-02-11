#!/bin/bash
# EC2 Instance Setup Script - Run this on your EC2 instance

echo "=== Installing Docker ==="
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "=== Installing Docker Compose ==="
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "=== Installing Git ==="
sudo yum install -y git

echo "=== Setup Complete ==="
echo "Please log out and log back in for docker group changes to take effect"
echo "Then run: ./deploy-ec2.sh"
