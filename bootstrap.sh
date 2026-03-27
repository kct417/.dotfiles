system=$(source /etc/os-release; echo "$ID")

source bin/system/$system.sh install
for script in bin/config/*; do source "$script" install; done

source bin/system/$system.sh init
for script in bin/config/*; do source "$script" init; done

echo "Reloading $SHELL"; exec $SHELL
