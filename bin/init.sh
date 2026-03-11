echo "--- init.sh ---"
INIT_SCRIPTS=~/.dotfiles/bin/*/init.sh
for SCRIPT in $INIT_SCRIPTS; do source $SCRIPT; done

echo "Reloading shell: $SHELL"
exec $SHELL
