packages=(
	"curl:curl"
	"stow:stow"
	"tmux:tmux"
)

if [ $1 = "install" ]; then
	echo "--- ubuntu/install.sh ---"

	install=()

	for entry in "${packages[@]}"; do
		pkg="${entry%%:*}"
		cmd="${entry##*:}"
		! command -v "$cmd" >/dev/null 2>&1 && install+=("$pkg")
	done

	[ ${#install[@]} -gt 0 ] && sudo apt install -y "${install[@]}"

elif [ $1 = "init" ]; then
	echo "--- ubuntu/init.sh ---"

elif [ $1 = "uninstall" ]; then
	echo "--- ubuntu/uninstall.sh ---"

	uninstall=()

	for entry in "${packages[@]}"; do
		pkg="${entry%%:*}"
		cmd="${entry##*:}"
		command -v "$cmd" >/dev/null 2>&1 && uninstall+=("$pkg")
	done

	[ ${#uninstall[@]} -gt 0 ] && sudo apt purge -y "${uninstall[@]}"

fi
