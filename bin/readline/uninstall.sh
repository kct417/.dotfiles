echo "--- readline/uninstall.sh ---"

inputrc=stow/readline/.inputrc
config="if [ -f ~/.config/readline/.inputrc ]; then . ~/.config/readline/.inputrc; fi"

grep -vxF "$config" "$inputrc" > "$inputrc.tmp" && mv -v "$inputrc.tmp" "$inputrc"
