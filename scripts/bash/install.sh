#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash

sudo apt install stow bat eza trash-cli -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
sudo apt autoremove

