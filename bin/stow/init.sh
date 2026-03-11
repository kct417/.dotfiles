echo "--- stow/init.sh ---"
STOW=~/.dotfiles/stow
for PKG in $STOW/*/; do stow -v --adopt --dotfiles -d $STOW -t ~ $(basename $PKG); done
