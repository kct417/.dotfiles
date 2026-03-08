if ! command -v nvim >/dev/null 2>&1; then
	if [[ $(uname -m) == "aarch64" ]]; then
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.tar.gz
		tar -xf ~/nvim-linux-arm64.tar.gz
		rsync -a ~/nvim-linux-arm64/ ~/.local/
		rm -r ~/nvim-linux-arm64 ~/nvim-linux-arm64.tar.gz
	else
		curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
		tar -xf ~/nvim-linux-x86_64.tar.gz
		rsync -a ~/nvim-linux-x86_64/ ~/.local/
		rm -r ~/nvim-linux-x86_64 ~/nvim-linux-x86_64.tar.gz
	fi	
fi

