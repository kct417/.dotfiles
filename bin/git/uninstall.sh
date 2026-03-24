echo "--- git/uninstall.sh ---"
rm -v ~/.local/bin/lazygit
find ~/.local/bin ~/.local/include ~/.local/lib ~/.local/share ~/.local/state -type d -empty -print -delete
