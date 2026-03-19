echo "--- readline/init.sh ---"
INPUTRC=stow/readline/.inputrc
CONFIG="if [ -f ~/.config/readline/.inputconfig ]; then . ~/.config/readline/.inputconfig; fi"
if ! grep -qxF "$CONFIG" $INPUTRC; then echo "$CONFIG" >> $INPUTRC; echo "$CONFIG"; fi
