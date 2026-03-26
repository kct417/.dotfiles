echo "--- bash/install.sh ---"

default=/etc/skel/.bashrc
bashrc=stow/bash/.bashrc

if [ ! -f $bashrc ]; then
	if [ -f ~/.bashrc ]; then
		cp -v ~/.bashrc $bashrc
	else
		cp -v $default $bashrc
	fi
fi
