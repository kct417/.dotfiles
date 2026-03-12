echo "--- stow/uninstall.sh ---"
for PKG in stow/*/; do stow -v -D --dotfiles -d stow -t ~ "$(basename "$PKG")"; done
