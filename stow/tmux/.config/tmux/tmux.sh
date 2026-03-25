SESSION_NAME='main'

if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
	tmux new -d -s $SESSION_NAME -n 'terminal'
	tmux new-window -d -t $SESSION_NAME -n 'nvim'
	tmux send-keys -t $SESSION_NAME:nvim 'vi' C-m
fi

tmux attach-session -t $SESSION_NAME
