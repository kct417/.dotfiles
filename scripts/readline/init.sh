#!/usr/bin/env bash

STOW_DIR=~/.dotfiles/readline
INPUTRC_STOW=$STOW_DIR/dot-inputrc

if ! grep -qxF "set completion-ignore-case On" $INPUTRC_STOW; then
    echo "set completion-ignore-case On" >> $INPUTRC_STOW
fi

if ! grep -qxF "set skip-completed-text On" $INPUTRC_STOW; then
	echo "set skip-completed-text On" >> $INPUTRC_STOW
fi

