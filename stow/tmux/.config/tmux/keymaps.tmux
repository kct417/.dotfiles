unbind r
bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded tmux config"

set -g prefix2 C-a
bind C-a send-prefix

# sessions

bind C-d detach-client

# windows

bind C-t new-window -c "#{pane_current_path}"

bind -n M-h split-window -hb
bind -n M-j split-window -v
bind -n M-k split-window -vb
bind -n M-l split-window -h

bind -n M-1 select-window -t 1
bind -n M-2 select-window -t 2
bind -n M-3 select-window -t 3
bind -n M-4 select-window -t 4
bind -n M-5 select-window -t 5
bind -n M-6 select-window -t 6
bind -n M-7 select-window -t 7
bind -n M-8 select-window -t 8
bind -n M-9 select-window -t 9

# panes

bind C-w kill-pane

bind -T copy-mode-vi 'C-h' select-pane -L
bind -T copy-mode-vi 'C-j' select-pane -D
bind -T copy-mode-vi 'C-k' select-pane -U
bind -T copy-mode-vi 'C-l' select-pane -R
bind -T copy-mode-vi 'C-\' select-pane -l
