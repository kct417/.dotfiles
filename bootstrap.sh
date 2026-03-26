for DIR in bin/*/; do [ -f "$DIR"/install.sh ] && source "$DIR"/install.sh; done
for DIR in bin/*/; do [ -f "$DIR"/init.sh ] && source "$DIR"/init.sh; done
echo "Reloading shell: $SHELL"; exec $SHELL
