system=$(uname -s)

source bin/system/$system.sh uninstall

for script in bin/config/*; do source "$script" uninstall; done

echo "Reloading $SHELL"; exec $SHELL
