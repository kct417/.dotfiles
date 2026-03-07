#!/usr/bin/env bash

SCRIPT_DIR=~/.dotfiles/scripts
BASH_DIR=$SCRIPT_DIR/bash
READLINE_DIR=$SCRIPT_DIR/readline

source $BASH_DIR/init.sh
source $READLINE_DIR/init.sh

echo "Reloading shell: $SHELL"

exec $SHELL

