#!/usr/bin/env bash

set -e

echo "Removing older version of Docker..."
apt-get remove -y docker docker.io
echo "Installing Docker dependencies..."
apt-get update -y
apt-get install -y \
  apt-transport-https \
  ca-certificates \
  curl \
  software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
  apt-key add -
add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) 
  stable"
echo "Installing Docker..."
apt-get update -y
apt-get install -y docker-ce
systemctl enable docker
systemctl start docker
echo "Installing updates..."
apt dist-upgrade -y
echo "Finished installing updates..."
# Add 'vagrant' user to 'docker' group
usermod -aG docker vagrant

set +e

exit 0
