BIN_DIR=~/.dotfiles/bin

INSTALL_SCRIPTS=$BIN_DIR/*/install.sh

for SCRIPT in $INSTALL_SCRIPTS; do
	source "$SCRIPT"
done

BASH_DIR=$BIN_DIR/bash
READLINE_DIR=$BIN_DIR/readline

source $BASH_DIR/bashrc.sh
source $READLINE_DIR/inputrc.sh

