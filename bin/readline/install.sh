echo "--- readline/install.sh ---"
DEFAULT=/etc/inputrc
READLINE=stow/readline
INPUTRC=$READLINE/.inputrc
if [ ! -f $INPUTRC ]; then
	if [ -f ~/.inputrc ]; then
		cp -v ~/.inputrc $INPUTRC
	else
		cp -v $DEFAULT $INPUTRC
	fi
fi
