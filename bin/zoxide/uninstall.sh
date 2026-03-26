echo "--- zoxide/uninstall.sh ---"

rm -v ~/.local/bin/zoxide
rm -vr ~/.local/share/zoxide
rm -v ~/.local/share/man/man1/zoxide*.1
find ~/.local/bin ~/.local/include ~/.local/lib ~/.local/share ~/.local/state -type d -empty -print -delete
