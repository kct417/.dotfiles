echo "--- readline/uninstall.sh ---"
INPUTRC=stow/readline/.inputrc
CONFIG="if [ -f ~/.config/readline/.inputconfig ]; then . ~/.config/readline/.inputconfig; fi"
grep -vxF "$CONFIG" "$INPUTRC" > "$INPUTRC.tmp" && mv "$INPUTRC.tmp" "$INPUTRC"
