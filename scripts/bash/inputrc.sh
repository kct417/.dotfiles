#!/usr/bin/env bash

STOW_DIR=~/.dotfiles/bash
INPUTRC_STOW=$STOW_DIR/.inputrc
INPUTRC_USER=~/.inputrc

if [ -f $INPUTRC_USER ]; then
    touch $INPUTRC_STOW
fi

if [ ! -f $INPUTRC_STOW ]; then
	if [ ! -f $INPUTRC_USER ]; then
		echo '$include /etc/inputrc' > $INPUTRC_STOW
	fi
fi

