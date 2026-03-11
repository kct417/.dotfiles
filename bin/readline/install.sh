echo "--- readline/install.sh ---"
READLINE=~/.dotfiles/stow/readline
INPUTRC=$READLINE/.inputrc
DEFAULT=/etc/inputrc
if [ ! -f $INPUTRC ]; then if [ ! -f ~/.inputrc ]; then mkdir -p $READLINE && cp $DEFAULT $INPUTRC; fi; fi
