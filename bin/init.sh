BIN_DIR=~/.dotfiles/bin

INIT_SCRIPTS=$BIN_DIR/*/init.sh

for SCRIPT in $INIT_SCRIPTS; do
    source "$SCRIPT"
done

echo "Reloading shell: $SHELL"
exec $SHELL

