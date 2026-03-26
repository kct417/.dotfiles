echo "--- readline/init.sh ---"

inputrc=stow/readline/.inputrc
config="[ -f ~/.config/readline/.inputrc ] && include ~/.config/readline/.inputrc"

if ! grep -qxF "$config" $inputrc; then
	echo "$config" >>$inputrc; echo "$config"
fi
