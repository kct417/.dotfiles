PS1_CMD1="\$(__git_ps1 \" (%s)\")"
PS1="\[\e]0;\w\a\]\[\e[96m\][\[\e[96m\]\T\[\e[96m\]]\[\e[92m\][\[\e[92m\]\u\[\e[92m\]@\[\e[92m\]\h\[\e[92m\]]\[\e[0m\] \[\e[94m\]\W\[\e[37m\]${PS1_CMD1}\n\[\e[95m\]❯\[\e[0m\] "
PS2="\[\e[95m\]❯\[\e[0m\] "

PATH="$HOME/.local/bin:$PATH"

if [ -f ~/.config/bash/.bash_aliases ]; then . ~/.config/bash/.bash_aliases; fi
if [ -f ~/.config/bash/local.sh ]; then . ~/.config/bash/.bash_local; fi

if [ -f ~/.config/git/ssh-agent.sh ]; then . ~/.config/git/ssh-agent.sh; fi
if [ -f ~/.local/share/blesh/ble.sh ]; then source -- ~/.local/share/blesh/ble.sh; fi

if command -v fzf >/dev/null 2>&1; then eval "$(fzf --bash)"; fi
if command -v zoxide >/dev/null 2>&1; then eval "$(zoxide init bash --cmd cd)"; fi

[[ -z $TMUX ]] && source ~/.config/tmux/tmux.sh
