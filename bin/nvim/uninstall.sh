echo "--- nvim/uninstall.sh ---"
rm -v ~/.local/bin/nvim
rm -vr ~/.local/lib/nvim
rm -vrf ~/.local/share/nvim
rm -v ~/.local/share/applications/nvim.desktop
rm -vr ~/.local/share/man/man1/nvim.1
rm -v ~/.local/share/icons/hicolor/*/apps/nvim.png
rm -vr ~/.local/state/nvim
find ~/.local/bin ~/.local/include ~/.local/lib ~/.local/share ~/.local/state -type d -empty -print -delete
