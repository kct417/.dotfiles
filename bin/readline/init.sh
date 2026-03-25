echo "--- readline/init.sh ---"
INPUTRC=stow/readline/.inputrc
CONFIG="if [ -f ~/.config/readline/.inputrc ]; then . ~/.config/readline/.inputrc; fi"
if ! grep -qxF "$CONFIG" $INPUTRC; then
	echo "$CONFIG" >>$INPUTRC
	echo "$CONFIG"
fi
