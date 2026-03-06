#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash

sudo apt install stow -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

source $BASH_DIR/bashrc.sh
source $BASH_DIR/inputrc.sh

