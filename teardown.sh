for script in bin/*; do source "$script" uninstall; done
echo "Reloading shell: $SHELL"; exec $SHELL
