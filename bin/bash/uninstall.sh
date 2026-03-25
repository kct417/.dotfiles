echo "--- bash/uninstall.sh ---"
BASHRC=stow/bash/.bashrc
CONFIG='if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi'
grep -vxF "$CONFIG" "$BASHRC" > "$BASHRC.tmp" && mv "$BASHRC.tmp" "$BASHRC"
rm -vr ~/.local/share/blesh ~/.local/state/blesh
find ~/.local/bin ~/.local/include ~/.local/lib ~/.local/share ~/.local/state -type d -empty -print -delete
