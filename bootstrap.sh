for script in bin/*; do source "$script" install; done
for script in bin/*; do source "$script" init; done
echo "Reloading shell: $SHELL"; exec $SHELL
