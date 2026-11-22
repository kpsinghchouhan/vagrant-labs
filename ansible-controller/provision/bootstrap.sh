#!/usr/bin/env bash

set -e

apt update -y

apt-get install -y git gh

# Clone dotfile repo
USER_NAME="vagrant"
HOME_DIR="/home/${USER_NAME}"

# Install Ansible
apt install -y software-properties-common
add-apt-repository -y ppa:ansible/ansible
apt install -y ansible
apt install -y python3-pip
apt install -y python3-venv
apt install -y libonig-dev
# Install Ansible Dev tools
mkdir "${HOME_DIR}/.ansible-dev-tools"
cd "${HOME_DIR}/.ansible-dev-tools"
python3 -m venv .venv
source .venv/bin/activate
pip install ansible-dev-tools
chown -R $USER_NAME:$USER_NAME "${HOME_DIR}/.ansible-dev-tools"
echo "" >> "${HOME_DIR}/.bashrc"
echo "# add Ansible dev tools to path" >> "${HOME_DIR}/.bashrc"
echo "PATH=${HOME_DIR}/.ansible-dev-tools/.venv/bin:${PATH}" >> "${HOME_DIR}/.bashrc"

apt dist-upgrade -y

# Schedule a restart if needed
if [[ -d /var/run/needrestart ]]; then
    shutdown -r +1
fi

set +e

exit 0
