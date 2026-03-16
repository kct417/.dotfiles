echo "--- bash/install.sh ---"
DEFAULT=/etc/skel/.bashrc
BASH=stow/bash
BASHRC=stow/bash/.bashrc
if [ ! -f ~/.bashrc ]; then	if [ ! -f ~/.bashrc ]; then mkdir -p $BASH && cp $DEFAULT $BASHRC; echo $BASHRC; fi fi
