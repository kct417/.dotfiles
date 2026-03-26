for DIR in bin/*/; do [ -d "$DIR" ] && [ -f "$DIR"/uninstall.sh ] && source "$DIR"/uninstall.sh; done
echo "Reloading shell: $SHELL"; exec $SHELL
