echo "--- nvim/install.sh ---"

if ! command -v nvim >/dev/null 2>&1; then
	url=https://github.com/neovim/neovim/releases/latest/download
	if [[ $(uname -m) == "aarch64" ]]; then basename=nvim-linux-arm64; else basename=nvim-linux-x86_64; fi

	mkdir -p ~/.local
	curl -vL $url/$basename.tar.gz | tar -xzf - -C ~/.local --strip-components=1
fi
