echo "--- bash/install.sh ---"
DEFAULT=/etc/skel/.bashrc
BASHRC=stow/bash/.bashrc
if [ ! -f $BASHRC ]; then
	if [ -f ~/.bashrc ]; then
		cp ~/.bashrc $BASHRC
		echo $BASHRC
	else
		cp $DEFAULT $BASHRC
		echo $BASHRC
	fi
fi 
