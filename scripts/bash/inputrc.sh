BASH_STOW_DIR=~/.dotfiles/bash

if [ ! -a $BASH_STOW_DIR/.inputrc ]; then echo '$include /etc/inputrc' > $BASH_STOW_DIR/.inputrc; fi

echo 'set completion-ignore-case On' >> $BASH_STOW_DIR/.inputrc
echo 'set show-all-if-ambiguous On' >> $BASH_STOW_DIR/.inputrc

