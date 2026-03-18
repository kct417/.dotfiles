echo "--- bash/init.sh ---"
BASHRC=stow/bash/.bashrc
CONFIG="if [ -f ~/.config/bash/.bashconfig ]; then . ~/.config/bash/.bashconfig; fi"
if ! grep -qxF "$CONFIG" $BASHRC; then echo "$CONFIG" >> $BASHRC; echo "$CONFIG"; fi
