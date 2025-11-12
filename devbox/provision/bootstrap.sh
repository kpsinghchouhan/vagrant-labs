#!/usr/bin/env bash

set -e

apt update -y

apt-get install -y git gh

# Clone dotfile repo
DOTFILES_REPO="https://github.com/kpsinghchouhan/dotfiles.git"
USER_NAME="vagrant"
HOME_DIR="/home/${USER_NAME}"
BIN_DIR="${HOME_DIR}/bin"
DOTFILES_DIR="${BIN_DIR}/dotfiles"
mkdir -p $BIN_DIR
cd $BIN_DIR
git clone $DOTFILES_REPO
chown -R $USER_NAME:$USER_NAME $BIN_DIR

# Create symlinks for Vim and Git configuration
ln -nfs "${DOTFILES_DIR}/vim/vimrc" "${HOME_DIR}/.vimrc"
ln -nfs "${DOTFILES_DIR}/vim/gvimrc" "${HOME_DIR}/.gvimrc"
ln -nfs "${DOTFILES_DIR}/vim" "${HOME_DIR}/.vim"
ln -nfs "${DOTFILES_DIR}/git/gitconfig_linux" "${HOME_DIR}/.gitconfig"
# Change ownership of symlinks
chown -h $USER_NAME:$USER_NAME "${HOME_DIR}/.vimrc"
chown -h $USER_NAME:$USER_NAME "${HOME_DIR}/.gvimrc"
chown -h $USER_NAME:$USER_NAME "${HOME_DIR}/.vim"
chown -h $USER_NAME:$USER_NAME "${HOME_DIR}/.gitconfig"

# Install Starship shell prompt and configure
curl -sS https://starship.rs/install.sh | sh /dev/stdin -y
echo "" >> "${HOME_DIR}/.bashrc"
echo "# setup Starship shell prompt" >> "${HOME_DIR}/.bashrc"
echo 'eval "$(starship init bash)"' >> "${HOME_DIR}/.bashrc"
mkdir -p "${HOME_DIR}/.config"
ln -nfs "${DOTFILES_DIR}/starship/starship.toml" "${HOME_DIR}/.config/starship.toml"
chown $USER_NAME:$USER_NAME "${HOME_DIR}/.config"
chown -h $USER_NAME:$USER_NAME "${HOME_DIR}/.config/starship.toml"

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

# Reboot the system if needed
if [[ -d /var/run/needrestart ]]; then
    shutdown -r +1
fi

set +e

exit 0
