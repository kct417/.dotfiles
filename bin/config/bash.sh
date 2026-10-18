bashrc_local=stow/bash/.config/bash/bashrc_local

if [ "$1" = "install" ]; then
	echo "--- bash/install.sh ---"

	[[ ! -L ~/.bashrc && -f ~/.bashrc ]] && mv -v ~/.bashrc $bashrc_local

elif [ "$1" = 'init' ]; then
	echo "--- bash/init.sh ---"

elif [ "$1" = 'uninstall' ]; then
	echo "--- bash/uninstall.sh ---"

	[ -f $bashrc_local ] && mv -v $bashrc_local ~/.bashrc

fi
