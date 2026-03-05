#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash

sudo apt install stow -y

source $BASH_DIR/bashrc.sh
source $BASH_DIR/inputrc.sh

