#!/usr/bin/env bash

BASH_STOW_DIR=~/.dotfiles/bash
INPUTRC_STOW=$BASH_STOW_DIR/.inputrc
INPUTRC_USER=~/.inputrc

if [ -f $INPUTRC_USER ]; then
	mv $INPUTRC_USER $INPUTRC_STOW
fi

if [ ! -f $INPUTRC_STOW ]; then
	echo '$include /etc/inputrc' > $INPUTRC_STOW
fi

if ! grep -qxF 'set completion-ignore-case On' $INPUTRC_STOW; then
	echo 'set completion-ignore-case On' >> $INPUTRC_STOW
fi

if ! grep -qxF 'set show-all-if-ambiguous On' $INPUTRC_STOW; then
	echo 'set show-all-if-ambiguous On' >> $INPUTRC_STOW
fi

