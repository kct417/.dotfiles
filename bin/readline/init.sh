echo "--- readline/init.sh ---"
INPUTRC=stow/readline/.inputrc

COMPLETION="set completion-ignore-case On"
SKIP="set skip-completed-text On"

if ! grep -qxF "$COMPLETION" $INPUTRC; then echo "$COMPLETION" >> $INPUTRC; echo "$COMPLETION"; fi 
if ! grep -qxF "$SKIP" $INPUTRC; then echo "$SKIP" >> $INPUTRC; echo "$SKIP"; fi
