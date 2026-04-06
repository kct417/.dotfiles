PATH="$HOME/.local/bin:$PATH"

source /etc/skel/.bashrc

PS1='\[\e]0;\w\a\]'\
'\[\e[96m\][\T]'\
'\[\e[92m\][\u@\h] '\
'\[\e[94m\]\W'\
'\[\e[37m\]$(__git_ps1 " (%s)")\n'\
'\[\e[95m\]❯\[\e[0m\] '
PS2="\[\e[95m\]❯\[\e[0m\] "

[ -f ~/.config/bash/bash_aliases ] && source ~/.config/bash/bash_aliases
[ -f ~/.config/bash/bashrc_local ] && source ~/.config/bash/bashrc_local
 
[ -f ~/.config/git/ssh-agent.sh ] && source ~/.config/git/ssh-agent.sh
[ -f ~/.config/git/git-prompt.sh ] && source ~/.config/git/git-prompt.sh
[ -f ~/.local/share/blesh/ble.sh ] && source -- ~/.local/share/blesh/ble.sh

command -v fzf >/dev/null 2>&1 && [ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.bash
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init bash --cmd cd)"

[[ -z $TMUX ]] && source ~/.config/tmux/tmux.sh
