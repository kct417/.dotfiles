if [ "$1" = "install" ]; then
	echo "--- bash/install.sh ---"

	if [ ! -f ~/.local/share/blesh/ble.sh ]; then
		curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
		bash ble-nightly/ble.sh --install ~/.local/share
		rm -rv ble-nightly
	fi

elif [ "$1" = 'init' ]; then
	echo "--- bash/init.sh ---"

elif [ "$1" = 'uninstall' ]; then
	echo "--- bash/uninstall.sh ---"

	rm -vr ~/.local/share/blesh ~/.local/state/blesh

fi
