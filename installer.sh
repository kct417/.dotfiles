system=$(source /etc/os-release; echo "$ID")

if [ "$#" -gt 0 ]; then
	if [ ! "$1" = "install" ] && [ ! "$1" = "init" ] && [ ! "$1" = "uninstall" ]; then
		for script in "$@"; do
			if [ -f bin/system/"$script".sh ]; then source bin/system/"$script".sh install
			else source bin/config/"$script".sh install; fi
		done

		for script in "$@"; do
			if [ -f bin/system/"$script".sh ]; then source bin/system/"$script".sh init
			else source bin/config/"$script".sh init; fi
		done

	elif [ "$#" -gt 1 ]; then
		if [ "$1" = "install" ]; then
			for script in "${@:2}"; do
				if [ -f bin/system/"$script".sh ]; then source bin/system/"$script".sh install
				else source bin/config/"$script".sh install; fi
			done

		elif [ "$1" = "init" ]; then
			for script in "${@:2}"; do
				if [ -f bin/system/"$script".sh ]; then source bin/system/"$script".sh init
				else source bin/config/"$script".sh init; fi
			done

		elif [ "$1" = "uninstall" ]; then
			for script in "${@:2}"; do
				if [ -f bin/system/"$script".sh ]; then source bin/system/"$script".sh uninstall
				else source bin/config/"$script".sh uninstall; fi
			done
		fi

	else
		if [ "$1" = "install" ]; then
			source bin/system/"$system".sh install
			for script in bin/config/*; do source "$script" install; done

		elif [ "$1" = "init" ]; then
			source bin/system/"$system".sh init
			for script in bin/config/*; do source "$script" init; done

		elif [ "$1" = "uninstall" ]; then
			source bin/system/"$system".sh uninstall
			for script in bin/config/*; do source "$script" uninstall; done

		fi
	fi

else
	source bin/system/"$system".sh install
	for script in bin/config/*; do source "$script" install; done

	source bin/system/"$system".sh init
	for script in bin/config/*; do source "$script" init; done

fi

echo "Reloading $SHELL"; exec $SHELL
