echo "--- nvim/install.sh ---"
if ! command -v nvim >/dev/null 2>&1; then
	URL=https://github.com/neovim/neovim/releases/latest/download
	if [[ $(uname -m) == "aarch64" ]]; then	BASENAME=nvim-linux-arm64; else BASENAME=nvim-linux-x86_64;	fi
	OUTPUT=~/$BASENAME
	curl -Lo $OUTPUT.tar.gz $URL/$BASENAME.tar.gz
	tar -xzf $OUTPUT.tar.gz -C ~
	rsync -a $OUTPUT/ ~/.local/
	rm -r $OUTPUT $OUTPUT.tar.gz
fi
