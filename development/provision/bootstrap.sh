#!/usr/bin/env bash

set -e

apt update -y
apt dist-upgrade -y

apt-get install -y git

#Clone dotfile repo
DOTFILES_REPO="https://github.com/kpsinghchouhan/dotfiles.git"
USER_NAME="vagrant"
HOME_DIR="/home/${USER_NAME}"
BIN_DIR="${HOME_DIR}/bin"
DOTFILES_DIR="${BIN_DIR}/dotfiles"
mkdir -p $BIN_DIR
chown -R $USER_NAME:$USER_NAME $BIN_DIR
cd $BIN_DIR
git clone $DOTFILES_REPO

# Create symlinks for Vim and Git configuration
ln -nfs "${DOTFILES_DIR}/vim/vimrc" "${HOME_DIR}/.vimrc"
ln -nfs "${DOTFILES_DIR}/vim/gvimrc" "${HOME_DIR}/.gvimrc"
ln -nfs "${DOTFILES_DIR}/vim" "${HOME_DIR}/.vim"
ln -nfs "${DOTFILES_DIR}/git/gitconfig_linux" "${HOME_DIR}/.gitconfig"

set +e

exit 0