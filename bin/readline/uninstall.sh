echo "--- readline/uninstall.sh ---"
INPUTRC=stow/readline/.inputrc
CONFIG="if [ -f ~/.config/readline/.inputrc ]; then . ~/.config/readline/.inputrc; fi"
grep -vxF "$CONFIG" "$INPUTRC" > "$INPUTRC.tmp" && mv "$INPUTRC.tmp" "$INPUTRC"
