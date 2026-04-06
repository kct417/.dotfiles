packages=(
	"bat:bat"
	"base-devel:gcc"
	"curl:curl"
	"eza:eza"
	"fd:fd"
	"nodejs:node"
	"npm:npm"
	"ripgrep:rg"
	"stow:stow"
	"tmux:tmux"
	"trash-cli:trash"
	"unzip:unzip"
)

if [ $1 = "install" ]; then
	echo "--- arch/install.sh ---"

	install=()

	for entry in "${packages[@]}"; do
		pkg="${entry%%:*}"
		cmd="${entry##*:}"
		! command -v "$cmd" >/dev/null 2>&1 && install+=("$pkg")
	done

	[ ${#install[@]} -gt 0 ] && sudo pacman -Syu --needed --noconfirm "${install[@]}"

elif [ $1 = "init" ]; then
	echo "--- arch/init.sh ---"

elif [ $1 = "uninstall" ]; then
	echo "--- arch/uninstall.sh ---"

	uninstall=()

	for entry in "${packages[@]}"; do
		pkg="${entry%%:*}"
		cmd="${entry##*:}"
		command -v "$cmd" >/dev/null 2>&1 && uninstall+=("$pkg")
	done

	[ ${#uninstall[@]} -gt 0 ] && sudo apt purge -y "${uninstall[@]}"

fi
