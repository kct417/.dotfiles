
echo "--- uninstall.sh ---"
UNINSTALL_SCRIPTS=~/.dotfiles/bin/*/uninstall.sh
for SCRIPT in $UNINSTALL_SCRIPTS; do source $SCRIPT; done
