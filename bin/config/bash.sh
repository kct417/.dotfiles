bashrc_local=stow/bash/.config/bash/bashrc_local

if [ "$1" = "install" ]; then
	echo "--- bash/install.sh ---"

	[[ ! -L ~/.bashrc && -f ~/.bashrc ]] && mv -v ~/.bashrc $bashrc_local

	if [ ! -f ~/.local/share/blesh/ble.sh ]; then
		curl -vL https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
		bash ble-nightly/ble.sh --install ~/.local/share
		rm -vr ble-nightly
	fi

elif [ "$1" = 'init' ]; then
	echo "--- bash/init.sh ---"

elif [ "$1" = 'uninstall' ]; then
	echo "--- bash/uninstall.sh ---"

	[ -f $bashrc_local ] && mv -v $bashrc_local ~/.bashrc

	rm -vr ~/.local/share/blesh ~/.local/state/blesh

fi
