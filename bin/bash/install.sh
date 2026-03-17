echo "--- bash/install.sh ---"
DEFAULT=/etc/skel/.bashrc
BASH=stow/bash
BASHRC=stow/bash/.bashrc
if [ ! $BASHRC ] then
	mkdir -p $BASH
	if [ -f ~/.bashrc ]; then
		cp ~/.bashrc $BASHRC
		echo $BASHRC
	else
		cp $DEFAULT $BASHRC
		echo $BASHRC
fi 
