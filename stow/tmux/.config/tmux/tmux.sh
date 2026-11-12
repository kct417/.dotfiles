SESSION_NAME='main'

if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
	tmux new -d -s $SESSION_NAME -n 'terminal'
	tmux neww -d -t $SESSION_NAME -n 'nvim'
	tmux send-keys -t $SESSION_NAME:nvim 'nvim .' C-m
fi

if [ -z "$TMUX" ] && [ -n "$PS1" ] && [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
	exec tmux a -t $SESSION_NAME
fi
