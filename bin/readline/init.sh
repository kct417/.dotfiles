echo "--- readline/init.sh ---"
INPUTRC=~/.dotfiles/stow/readline/.inputrc
if ! grep -qxF "set completion-ignore-case On" $INPUTRC; then echo "set completion-ignore-case On" >> $INPUTRC; fi
if ! grep -qxF "set skip-completed-text On" $INPUTRC; then echo "set skip-completed-text On" >> $INPUTRC; fi
