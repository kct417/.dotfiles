echo "--- ubuntu/init.sh ---"
BASHRC=stow/ubuntu/.bashrc
LOCAL=PATH=\"\$HOME/.local/bin:\$PATH\"

BASH=.config/bash
ALIAS="if [ -f ~/$BASH/.bash_aliases ]; then . ~/$BASH/.bash_aliases; fi"
SSH="if [ -f ~/$BASH/ssh-agent.sh ]; then . ~/$BASH/ssh-agent.sh; fi"
PROMPT1="if [ -f ~/$BASH/prompt.sh ]; then . ~/$BASH/prompt.sh; PROMPT_COMMAND='PS1_CMD1=\$(__git_ps1 \" (%s)\")';"
PROMPT2="PS1='\[\e[96m\][\T]\[\e[92m\][\u@\h]\[\e[0m\] \[\e[94m\]\W\[\e[37m\]\${PS1_CMD1}\n\[\e[0m\]>\[\e]0;\w\a\] '; fi"
ZOXIDE="if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi"

if ! grep -qxF "$LOCAL" $BASHRC; then echo "$LOCAL" >> $BASHRC; fi
if ! grep -qxF "$ALIAS" $BASHRC; then	echo "$ALIAS" >> $BASHRC; fi
if ! grep -qxF "$SSH" $BASHRC; then echo "$SSH" >> $BASHRC; fi
if ! grep -qxF "$PROMPT1 $PROMPT2" $BASHRC; then echo "$PROMPT1 $PROMPT2" >> $BASHRC; fi
if ! grep -qxF "$ZOXIDE" $BASHRC; then echo "$ZOXIDE" >> $BASHRC; fi
