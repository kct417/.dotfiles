#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash
READLINE_DIR=$SCRIPT_DIR/readline

sudo apt install stow bat trash-cli -y
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

source $BASH_DIR/bashrc.sh
source $READLINE_DIR/inputrc.sh

