echo "--- install.sh ---"
INSTALL_SCRIPTS=~/.dotfiles/bin/*/install.sh
for SCRIPT in $INSTALL_SCRIPTS; do source "$SCRIPT"; done
