#!/usr/bin/env bash

BASH_DIR=~/.dotfiles/bash
BASHRC_STOW=$BASH_DIR/.bashrc
INPUTRC_STOW=$BASH_DIR/.inputrc

if ! grep -qxF "source ~/.agent.sh" $BASHRC_STOW; then
    echo "source ~/.agent.sh" >> $BASHRC_STOW
fi

if ! grep -qxF "eval \"\$(zoxide init bash --cmd cd)\"" $BASHRC_STOW; then
    echo "eval \"\$(zoxide init bash --cmd cd)\"" >> $BASHRC_STOW
fi

if ! grep -qxF "set completion-ignore-case On" $INPUTRC_STOW; then
    echo "set completion-ignore-case On" >> $INPUTRC_STOW
fi

if ! grep -qxF "set skip-completed-text On" $INPUTRC_STOW; then
	echo "set skip-completed-text On" >> $INPUTRC_STOW
fi

