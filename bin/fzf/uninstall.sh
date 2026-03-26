echo "--- fzf/uninstall.sh ---"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/uninstall --xdg

rm -v ~/.local/bin/fzf*
rm -vrf ~/.fzf
