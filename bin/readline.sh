default=/etc/inputrc
inputrc=stow/readline/.inputrc
config="[ -f ~/.config/readline/.inputrc ] && source ~/.config/readline/.inputrc"

if [ $1 = "install" ]; then
	echo "--- readline/install.sh ---"

	if [ ! -f $inputrc ]; then
		if [ -f ~/.inputrc ]; then
			cp -v ~/.inputrc $inputrc
		else
			cp -v $default $inputrc
		fi
	fi

else if [ $1 = "init" ]; then
	echo "--- readline/init.sh ---"

	if ! grep -qxF "$config" $inputrc; then
		echo "$config" >> $inputrc; echo "$config"
	fi

else if [ $1 = "uninstall" ]; then
	echo "--- readline/uninstall.sh ---"

	grep -vxF "$config" "$inputrc" > "$inputrc.tmp" && mv -v "$inputrc.tmp" "$inputrc"

fi; fi; fi
