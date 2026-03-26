echo "--- ubuntu/install.sh ---"

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

missing=()

for entry in "${packages[@]}"; do
	pkg="${entry%%:*}"
	cmd="${entry##*:}"
	! command -v "$cmd" >/dev/null 2>&1 && missing+=("$pkg")
done

[ ${#missing[@]} -gt 0 ] && sudo apt install -y "${missing[@]}"
