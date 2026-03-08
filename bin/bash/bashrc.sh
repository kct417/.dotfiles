STOW_DIR=~/.dotfiles/stow/bash
BASHRC_STOW=$STOW_DIR/.bashrc
BASHRC_USER=~/.bashrc
BASHRC_DEFAULT=/etc/skel/.bashrc

if [ ! -f $BASHRC_STOW ]; then
	if [ ! -f $BASHRC_USER ]; then
		cp $BASHRC_DEFAULT $BASHRC_STOW
	fi
fi

