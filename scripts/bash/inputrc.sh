#!/usr/bin/env bash

STOW_DIR=~/.dotfiles/bash
INPUTRC_STOW=$STOW_DIR/.inputrc
INPUTRC_USER=~/.inputrc

if [ ! -f $INPUTRC_STOW ]; then
	if [ ! -f $INPUTRC_USER ]; then
		echo '$include /etc/inputrc' > $INPUTRC_STOW
	fi
fi

if ! grep -qxF 'set completion-ignore-case On' $INPUTRC_STOW; then
	echo 'set completion-ignore-case On' >> $INPUTRC_STOW
fi

if ! grep -qxF 'set show-all-if-ambiguous On' $INPUTRC_STOW; then
	echo 'set show-all-if-ambiguous On' >> $INPUTRC_STOW
fi

