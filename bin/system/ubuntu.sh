packages=(
	"bat:batcat"
	"build-essential:gcc"
	"curl:curl"
	"eza:eza"
	"fd-find:fdfind"
	"nodejs:node"
	"npm:npm"
	"ripgrep:rg"
	"stow:stow"
	"trash-cli:trash"
	"unzip:unzip"
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

else if [ $1 = "uninstall" ]; then
	echo "--- ubuntu/uninstall.sh ---"

	uninstall=()

	for entry in "${packages[@]}"; do
		pkg="${entry%%:*}"
		cmd="${entry##*:}"
		command -v "$cmd" >/dev/null 2>&1 && uninstall+=("$pkg")
	done

	[ ${#uninstall[@]} -gt 0 ] && sudo apt purge -y "${uninstall[@]}"

fi; fi
