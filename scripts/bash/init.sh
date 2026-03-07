#!/usr/bin/env bash

STOW_DIR=~/.dotfiles/bash
AGENT_DIR=~/.dotfiles/scripts
BASHRC_STOW=$STOW_DIR/.bashrc

if ! grep -qxF "PATH=\"\$HOME/.local/bin:\$PATH\"" $BASHRC_STOW; then
    echo "PATH=\"\$HOME/.local/bin:\$PATH\"" >> $BASHRC_STOW
fi

if ! grep -qxF "source $AGENT_DIR/agent.sh" $BASHRC_STOW; then
    echo "source $AGENT_DIR/agent.sh" >> $BASHRC_STOW
fi

if ! grep -qxF "eval \"\$(zoxide init bash --cmd cd)\"" $BASHRC_STOW; then
    echo "eval \"\$(zoxide init bash --cmd cd)\"" >> $BASHRC_STOW
fi

