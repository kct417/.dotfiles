STOW_DIR=~/.dotfiles/stow/readline
INPUTRC_STOW=$STOW_DIR/.inputrc

if ! grep -qxF "set completion-ignore-case On" $INPUTRC_STOW; then
    echo "set completion-ignore-case On" >> $INPUTRC_STOW
fi

if ! grep -qxF "set skip-completed-text On" $INPUTRC_STOW; then
	echo "set skip-completed-text On" >> $INPUTRC_STOW
fi

