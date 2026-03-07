alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove'  

alias ~='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias vi='vim -i NONE'
alias vim='vim -i NONE'

alias py='python3'
alias python='python3'

alias cat='cat -n'
if command -v batcat >/dev/null 2>&1; then
	alias cat='batcat -n'
	help() {
    	"$@" --help 2>&1 | batcat --plain --language=help
	}
fi

mkcd () {
	mkdir $1 && cd $1
}

