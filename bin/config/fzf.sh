if [ "$1" = "install" ]; then
	echo "--- fzf/install.sh ---"

	if ! command -v fzf >/dev/null 2>&1; then
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/install --all --xdg --no-update-rc
		mkdir -p ~/.local/bin && mv -v ~/.fzf/bin/* ~/.local/bin

		rm -vrf ~/.fzf
	fi

elif [ "$1" = "init" ]; then
	echo "--- fzf/init.sh ---"

elif [ "$1" = "uninstall" ]; then
	echo "--- fzf/uninstall.sh ---"

	if command -v fzf >/dev/null 2>&1; then
		git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
		~/.fzf/uninstall --xdg

		rm -v ~/.local/bin/fzf*
		rm -vrf ~/.fzf 
	fi

fi
