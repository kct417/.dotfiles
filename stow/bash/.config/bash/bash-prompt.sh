source ~/.config/git/git-prompt.sh

PS1_CMD1="\$(__git_ps1 \" (%s)\")"
PS1="\[\e[96m\][\[\e[96m\]\T\[\e[96m\]]\[\e[92m\][\[\e[92m\]\u\[\e[92m\]@\[\e[92m\]\h\[\e[92m\]]\[\e[0m\] \[\e[94m\]\W\[\e[37m\]${PS1_CMD1}\n\[\e[95m\]❯\[\e]0;\w\a\]\[\e[0m\] "
PS2="\[\e[95m\]❯\[\e[0m\] "
