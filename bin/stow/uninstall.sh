echo "--- stow/uninstall.sh ---"

for pkg in stow/*/; do stow -v -D --dotfiles -d stow -t ~ "$(basename "$pkg")"; done
