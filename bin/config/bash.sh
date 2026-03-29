default=/etc/skel/.bashrc
bashrc=stow/bash/.bashrc
config="[ -f ~/.config/bash/.bashrc ] && source ~/.config/bash/.bashrc"

if [ "$1" = "install" ]; then
	echo "--- bash/install.sh ---"

	if [ ! -f $bashrc ]; then
		if [ -f ~/.bashrc ]; then
			cp -v ~/.bashrc $bashrc
		else
			cp -v $default $bashrc
		fi
	fi

elif [ "$1" = "init" ]; then
	echo "--- bash/init.sh ---"

	! grep -qxF "$config" $bashrc && echo "$config" | tee -a $bashrc

elif [ "$1" = "uninstall" ]; then
	echo "--- bash/uninstall.sh ---"

	grep -vxF "$config" "$bashrc" > "$bashrc.tmp" && mv -v "$bashrc.tmp" "$bashrc"

fi
