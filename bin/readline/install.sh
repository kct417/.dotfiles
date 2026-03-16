echo "--- readline/install.sh ---"
DEFAULT=/etc/inputrc
READLINE=stow/readline
INPUTRC=$READLINE/.inputrc
if [ ! -f $INPUTRC ]; then if [ ! -f ~/.inputrc ]; then mkdir -p $READLINE && cp $DEFAULT $INPUTRC; echo $INPUTRC; fi; fi
