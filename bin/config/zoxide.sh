if [ "$1" = "install" ]; then
	echo "--- zoxide/install.sh ---"

	if ! command -v zoxide >/dev/null 2>&1; then
		curl -vsSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
	fi

elif [ "$1" = "init" ]; then
	echo "--- zoxide/init.sh ---"

elif [ "$1" = "uninstall" ]; then
	echo "--- zoxide/uninstall.sh ---"

	rm -v ~/.local/bin/zoxide
	rm -vr ~/.local/share/zoxide
	rm -v ~/.local/share/man/man1/zoxide*.1
	find ~/.local -type d -empty -print -delete

fi
