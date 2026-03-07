alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove'  

alias ~='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias py='python3'
alias python='python3'

alias cat='cat -n'
help() {
	"$@" --help
}
if command -v batcat >/dev/null 2>&1; then
	alias cat='batcat -p'
	alias catn='batcat -n'
	export MANPAGER="batcat -plman"
	help() {
    	"$@" --help 2>&1 | batcat --plain --language=help
	}
fi

if command -v eza >/dev/null 2>&1; then
	alias ls='eza -1'
	alias ll='eza -loAF --no-user --no-time --git --git-repos'
	alias tree='eza -T -L=3'
fi

mkcd () {
	mkdir $1 && cd $1
}

