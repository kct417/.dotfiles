alias update='sudo apt update && sudo apt upgrade && sudo apt autoremove'  
alias packages='sudo apt-mark showmanual'

alias ~='cd -'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd...='cd ../..'

alias rrm='rm -r'
alias frrm='rm -rf'

mkcd () { command mkdir "$1" && command cd "$1" || return; }

alias py='python3'
alias python='python3'

if command -v nvim >/dev/null 2>&1; then
	vi() { if [ $# -eq 0 ]; then command nvim .; else command nvim "$@"; fi }
	vim() { if [ $# -eq 0 ]; then command nvim .; else command nvim "$@"; fi }
else
	vi() { if [ $# -eq 0 ]; then command vim .; else command vim "$@"; fi }
	vim() { if [ $# -eq 0 ]; then command vim .; else command vim "$@"; fi }
fi

alias cat='cat -n'
help() { "$@" --help; }
if command -v batcat >/dev/null 2>&1; then
	alias cat='batcat -p'
	alias catn='batcat -n'
	export MANPAGER="batcat -plman"
	help() { "$@" --help 2>&1 | command batcat --plain --language=help; }
fi

if command -v eza >/dev/null 2>&1; then
	alias ls='eza -1'
	alias ll='eza -loAF --no-user --no-time --total-size --git --git-repos'
	alias tree='eza -T -L=3'
fi

if command -v fdfind >/dev/null 2>&1; then
	alias fd='fdfind'
fi
