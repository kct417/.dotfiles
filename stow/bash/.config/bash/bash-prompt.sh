source ~/.config/git/git-prompt.sh

PS1_CMD1="\$(__git_ps1 \" (%s)\")"
PS1="\[\e[96m\][\[\e[96m\]\T\[\e[96m\]]\[\e[92m\][\[\e[92m\]\u\[\e[92m\]@\[\e[92m\]\h\[\e[92m\]]\[\e[0m\] \[\e[94m\]\W\[\e[37m\]${PS1_CMD1}\n\[\e[95m\]❯\[\e]0;\w\a\]\[\e[0m\] "
PS2="\[\e[95m\]❯\[\e[0m\] "

function lastcommand {
    history | tail -1 | cut -c 8-
}
function deleteprompt {
    n=${PS1@P}
    n=${n//[^$'\n']}
    n=${#n}
    tput cuu $((n + 1))
    tput ed
}

PS0='\[$(deleteprompt)\]\[\e[95m\]❯\[\e[0m\] $(lastcommand)\n\[${PS1:0:$((EXPS0=1,0))}\]'
PROMPT_COMMAND='[ "$EXPS0" = 0 ] && deleteprompt && echo -e "❯" || EXPS0=0'
