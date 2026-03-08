STOW_DIR=~/.dotfiles/stow/readline
INPUTRC_STOW=$STOW_DIR/.inputrc
INPUTRC_USER=~/.inputrc
INPUTRC_DEFAULT=/etc/inputrc

if [ ! -f $INPUTRC_STOW ]; then
	if [ ! -f $INPUTRC_USER ]; then
		cp $INPUTRC_DEFAULT $INPUTRC_STOW
	fi
fi

