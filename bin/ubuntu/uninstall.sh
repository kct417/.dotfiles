echo "--- ubuntu/uninstall.sh ---"

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

installed=()

for entry in "${packages[@]}"; do
	pkg="${entry%%:*}"
	cmd="${entry##*:}"
	command -v "$cmd" >/dev/null 2>&1 && installed+=("$pkg")
done

[ ${#installed[@]} -gt 0 ] && sudo apt install -y "${installed[@]}"
