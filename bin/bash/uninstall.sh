echo "--- bash/uninstall.sh ---"
BASHRC=stow/bash/.bashrc
CONFIG='if [ -f ~/.config/bash/.bashconfig ]; then . ~/.config/bash/.bashconfig; fi'
grep -vxF "$CONFIG" "$BASHRC" > "$BASHRC.tmp" && mv "$BASHRC.tmp" "$BASHRC"
rm -vr ~/.local/share/blesh
