echo "--- bash/init.sh ---"

bashrc=stow/bash/.bashrc
config="[ -f ~/.config/bash/.bashrc ] && source ~/.config/bash/.bashrc"

if ! grep -qxF "$config" $bashrc; then
	echo "$config" >> $bashrc; echo "$config"
fi
