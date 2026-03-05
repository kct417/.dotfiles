#!/usr/bin/env bash

BASH_STOW_DIR=~/.dotfiles/bash
BASHRC_STOW=$BASH_STOW_DIR/.bashrc
BASHRC_USER=~/.bashrc

if [ -f $BASH_USER ]; then
	mv $BASHRC_USER $BASHRC_STOW
fi

if [ ! -f $BASHRC_STOW ]; then
	if [ -f $BASHRC_USER ]; then
		cp $BASHRC_USER $BASHRC_STOW
	else
		echo 'source /etc/skel/.bashrc' > $BASHRC_STOW
	fi
fi

if ! grep -qxF "source .agent.sh" $BASHRC_STOW; then
    echo "source .agent.sh" >> $BASHRC_STOW
fi

