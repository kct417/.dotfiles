echo "--- bash/init.sh ---"
BASHRC=stow/bash/.bashrc
CONFIG="if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi"
if ! grep -qxF "$CONFIG" $BASHRC; then
	echo "$CONFIG" >>$BASHRC
	echo "$CONFIG"
fi
