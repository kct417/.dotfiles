echo "--- ubuntu/init.sh ---"
BASHRC=~/.dotfiles/stow/ubuntu/.bashrc
LOCAL=PATH=\"\$HOME/.local/bin:\$PATH\"
ALIAS="if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi"
SSH="source ~/.dotfiles/bin/git/ssh-agent.sh"
ZOXIDE="if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi"

if ! grep -qxF "$LOCAL" $BASHRC; then echo "$LOCAL" >> $BASHRC; fi
if ! grep -qxF "$ALIAS" $BASHRC; then	echo "$ALIAS" >> $BASHRC; fi
if ! grep -qxF "$SSH" $BASHRC; then echo "$SSH" >> $BASHRC; fi
if ! grep -qxF "$ZOXIDE" $BASHRC; then echo "$ZOXIDE" >> $BASHRC; fi
