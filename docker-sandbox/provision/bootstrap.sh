#!/usr/bin/env bash

set -e

echo "Removing conflicting packages..."
apt remove -y $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1)
echo "Installing Docker dependencies..."
apt update -y
apt-get install -y ca-certificates curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

echo "Installing Docker..."
apt update -y
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
systemctl enable docker
systemctl start docker
# Add 'vagrant' user to 'docker' group
usermod -aG docker vagrant
echo "Installing updates..."
apt dist-upgrade -y
echo "Finished installing updates..."
# Schedule a restart if needed
if [[ -d /var/run/needrestart ]]; then
    shutdown -r +1
fi

set +e

exit 0
