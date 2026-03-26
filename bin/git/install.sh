echo "--- git/install.sh ---"

if ! command -v lazygit >/dev/null 2>&1; then
	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
	if [[ $(uname -m) == "aarch64" ]]; then BASENAME=Linux_arm64; else BASENAME=Linux_x86_64; fi
	url="https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_$BASENAME.tar.gz"

	curl -vLo lazygit.tar.gz "$url"
	tar xf lazygit.tar.gz lazygit
	install lazygit -D -t ~/.local/bin/

	rm -v lazygit lazygit.tar.gz
fi
