echo "--- stow/init.sh ---"

for pkg in stow/*/; do stow -v --adopt --dotfiles -d stow -t ~ "$(basename "$pkg")"; done
