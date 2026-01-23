#!/bin/bash

set -e

# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# Install basic tools
sudo apt-get install -y curl wget git unzip apt-transport-https ca-certificates gnupg lsb-release

# Install Nginx
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Install Docker
sudo apt-get install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker ubuntu || true

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Install eksctl
curl -s "https://api.github.com/repos/weaveworks/eksctl/releases/latest" \
  | grep "browser_download_url.*linux_amd64.tar.gz" \
  | cut -d '"' -f 4 \
  | wget -O eksctl.tar.gz -i -
tar -xzf eksctl.tar.gz
chmod +x eksctl
sudo mv eksctl /usr/local/bin/
rm eksctl.tar.gz

# Verify installs
echo "== Installed Versions =="
docker --version
kubectl version --client --short
eksctl version
nginx -v

echo "Bootstrap completed successfully!"
