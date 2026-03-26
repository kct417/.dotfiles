echo "--- bash/uninstall.sh ---"

bashrc=stow/bash/.bashrc
config='if [ -f ~/.config/bash/.bashrc ]; then . ~/.config/bash/.bashrc; fi'

grep -vxF "$config" "$bashrc" > "$bashrc.tmp" && mv -v "$bashrc.tmp" "$bashrc"
