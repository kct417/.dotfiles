echo "--- readline/install.sh ---"

default=/etc/inputrc
readline=stow/readline
inputrc=$readline/.inputrc

if [ ! -f $inputrc ]; then
	if [ -f ~/.inputrc ]; then
		cp -v ~/.inputrc $inputrc
	else
		cp -v $default $inputrc
	fi
fi
