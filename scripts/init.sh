#!/usr/bin/env bash

BASH_DIR=~/.dotfiles/scripts/bash

source $BASH_DIR/init.sh

echo "Reloading shell: $SHELL"

exec $SHELL

