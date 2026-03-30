if [ "$1" = "install" ]; then
	echo "--- nvim/install.sh ---"

	if ! command -v nvim >/dev/null 2>&1; then
		url=https://github.com/neovim/neovim/releases/latest/download
		if [[ $(uname -m) == "aarch64" ]]; then basename=nvim-linux-arm64; else basename=nvim-linux-x86_64; fi

		mkdir -p ~/.local
		curl -vL $url/$basename.tar.gz | tar -xzf - -C ~/.local --strip-components=1
	fi

elif [ "$1" = "init" ]; then
	echo "--- nvim/init.sh ---"

elif [ "$1" = "uninstall" ]; then
	echo "--- nvim/uninstall.sh ---"

	rm -v ~/.local/bin/nvim
	rm -vr ~/.local/lib/nvim
	rm -vrf ~/.local/share/nvim
	rm -v ~/.local/share/applications/nvim.desktop
	rm -vr ~/.local/share/man/man1/nvim.1
	rm -v ~/.local/share/icons/hicolor/*/apps/nvim.png
	rm -vr ~/.local/state/nvim

fi
