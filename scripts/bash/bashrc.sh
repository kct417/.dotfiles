#!/usr/bin/env bash

STOW_DIR=~/.dotfiles/bash
BASHRC_STOW=$STOW_DIR/.bashrc
BASHRC_USER=~/.bashrc

if [ ! -f $BASHRC_STOW ]; then
	if [ ! -f $BASHRC_USER ]; then
		echo 'source /etc/skel/.bashrc' > $BASHRC_STOW
	fi
fi

if ! grep -qxF "source ~/.agent.sh" $BASHRC_STOW; then
    echo "source ~/.agent.sh" >> $BASHRC_STOW
fi

