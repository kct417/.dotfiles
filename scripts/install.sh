#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash
READLINE_DIR=$SCRIPT_DIR/readline

source $BASH_DIR/install.sh

source $BASH_DIR/bashrc.sh
source $READLINE_DIR/inputrc.sh

