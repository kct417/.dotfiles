echo "--- ubuntu/init.sh ---"
BASHRC=~/.dotfiles/stow/ubuntu/.bashrc
LOCAL=PATH=\"\$HOME/.local/bin:\$PATH\"
ALIAS="if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi"
SSH="if [ -f ~/.dotfiles/bin/git/ssh-agent.sh ]; then . ~/.dotfiles/bin/git/ssh-agent.sh; fi"
PROMPT1="if [ -f ~/.dotfiles/bin/git/prompt.sh ]; then . ~/.dotfiles/bin/git/prompt.sh; PROMPT_COMMAND='PS1_CMD1=\$(__git_ps1 \" (%s)\")';"
PROMPT2="PS1='\[\e[96m\][\T]\[\e[92m\][\u@\h]\[\e[0m\] \[\e[94m\]\W\[\e[37m\]\${PS1_CMD1}\n\[\e[0m\]>\[\e]0;\w\a\] '; fi"
ZOXIDE="if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi"

if ! grep -qxF "$LOCAL" $BASHRC; then echo "$LOCAL" >> $BASHRC; fi
if ! grep -qxF "$ALIAS" $BASHRC; then	echo "$ALIAS" >> $BASHRC; fi
if ! grep -qxF "$SSH" $BASHRC; then echo "$SSH" >> $BASHRC; fi
if ! grep -qxF "$PROMPT1 $PROMPT2" $BASHRC; then echo "$PROMPT1 $PROMPT2" >> $BASHRC; fi
if ! grep -qxF "$ZOXIDE" $BASHRC; then echo "$ZOXIDE" >> $BASHRC; fi
