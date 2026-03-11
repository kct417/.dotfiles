echo "--- nvim/install.sh ---"
if ! command -v nvim >/dev/null 2>&1; then
	URL=https://github.com/neovim/neovim/releases/latest/download
	if [[ $(uname -m) == "aarch64" ]]; then	BASENAME=nvim-linux-arm64; else BASENAME=nvim-linux-x86_64;	fi
	OUTPUT=~/$BASENAME
	curl -Lo $OUTPUT.tar.gz $URL/$BASENAME.tar.gz
	tar -xzf $OUTPUT.tar.gz -C ~
	mkdir -p ~/.local/
	rsync -a $OUTPUT/ ~/.local/
	rm -rv $OUTPUT $OUTPUT.tar.gz
fi

if ! command -v lua-language-server >/dev/null 2>&1; then
	TAG_URL=https://api.github.com/repos/LuaLS/lua-language-server/releases/latest
	URL=https://github.com/LuaLS/lua-language-server/releases/latest/download
	SHARE=~/.local/share/lua-language-server
	BIN=~/.local/bin/lua-language-server
	TAG=$(curl -s $TAG_URL | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
	if [[ $(uname -m) == "aarch64" ]]; then BASENAME=lua-language-server-$TAG-linux-arm64; else BASENAME=lua-language-server-$TAG-linux-x64; fi 
	OUTPUT=~/$BASENAME
	curl -Lo "$OUTPUT".tar.gz $URL/"$BASENAME".tar.gz
	mkdir -p $SHARE
	tar -xzf "$OUTPUT".tar.gz -C $SHARE
	ln -sf $SHARE/bin/lua-language-server $BIN
	rm -v "$OUTPUT".tar.gz
fi
