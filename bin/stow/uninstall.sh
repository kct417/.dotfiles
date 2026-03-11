echo "--- stow/uninstall.sh ---"
STOW=~/.dotfiles/stow
for PKG in "$STOW"/*/; do stow -v -D --dotfiles -d $STOW -t ~ "$(basename "$PKG")"; done
