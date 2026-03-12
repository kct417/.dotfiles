echo "--- stow/init.sh ---"
for PKG in stow/*/; do stow -v --adopt --dotfiles -d stow -t ~ "$(basename "$PKG")"; done
