_command_start=0
_command_time=""

function blehook/preexec {
	_command_start=$SECONDS
}

function blehook/postexec {
	local elapsed=$((SECONDS - _command_start))
	if ((elapsed < 60)); then
		_command_time="${elapsed}s"
	else
		local m=$((elapsed / 60))
		local s=$((elapsed % 60))
		_command_time="${m}m${s}s"
	fi
}

blehook PREEXEC+=blehook/preexec
blehook POSTEXEC+=blehook/postexec

ble-face -s region_insert fg=27
ble-face -s syntax_error fg=231
ble-face -s auto_complete fg=238

bleopt exec_exit_mark=
bleopt exec_errexit_mark=

bleopt prompt_ruler=empty-line
bleopt prompt_ps1_transient=trim
bleopt prompt_rps1='${_command_time:- }'
bleopt prompt_rps1_transient=1

bleopt prompt_status_line='\w'
bleopt prompt_status_align=right
ble-face prompt_status_line='fg=231'

ble-import -d integration/fzf-completion -C 'complete -o dirnames -o nospace -F _fzf_dir_completion cd'
ble-import -d integration/fzf-key-bindings
