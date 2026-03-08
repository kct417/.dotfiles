STOW_DIR=~/.dotfiles/stow

for PKG in "$STOW_DIR"/*/; do
    stow -v -D --dotfiles -d "$STOW_DIR" -t ~ "$(basename "$PKG")"
done

