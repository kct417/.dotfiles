echo "--- bash/install.sh ---"
DEFAULT=/etc/skel/.bashrc
BASHRC=stow/bash/.bashrc
if [ ! -f $BASHRC ]; then
	if [ -f ~/.bashrc ]; then
		cp ~/.bashrc $BASHRC
		echo $BASHRC
	else
		cp $DEFAULT $BASHRC
		echo $BASHRC
	fi
fi

if [ ! -f ~/.local/share/blesh/ble.sh ]; then
	curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf -
	bash ble-nightly/ble.sh --install ~/.local/share
	rm -rv ble-nightly
fi
