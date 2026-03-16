echo "--- bash/init.sh ---"
BASHRC=stow/bash/.bashrc
LOCAL=PATH=\"\$HOME/.local/bin:\$PATH\"

BASH=.config/bash
ALIAS="if [ -f ~/$BASH/.bash_aliases ]; then . ~/$BASH/.bash_aliases; fi"
SSH="if [ -f ~/$BASH/ssh-agent.sh ]; then . ~/$BASH/ssh-agent.sh; fi"
PROMPT="if [ -f ~/$BASH/bash-prompt.sh ]; then . ~/$BASH/bash-prompt.sh; fi"
ZOXIDE="if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi"

if ! grep -qxF "$LOCAL" $BASHRC; then echo "$LOCAL" >> $BASHRC; echo "$LOCAL"; fi
if ! grep -qxF "$ALIAS" $BASHRC; then echo "$ALIAS" >> $BASHRC; echo "$ALIAS"; fi
if ! grep -qxF "$SSH" $BASHRC; then echo "$SSH" >> $BASHRC; echo "$SSH"; fi
if ! grep -qxF "$PROMPT" $BASHRC; then echo "$PROMPT" >> $BASHRC; echo "$PROMPT"; fi
if ! grep -qxF "$ZOXIDE" $BASHRC; then echo "$ZOXIDE" >> $BASHRC; echo "$ZOXIDE"; fi
