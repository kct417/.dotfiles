unbind r
bind r source-file ~/.config/tmux/tmux.conf \; display "Reloaded tmux config"

set -g prefix2 C-a
bind C-a send-prefix

# sessions

bind -n C-d detach-client

# windows

bind -n C-t new-window -c "#{pane_current_path}"

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

bind -n C-e kill-pane

# Smart pane switching with awareness of Vim splits.
# See: https://github.com/christoomey/vim-tmux-navigator
vim_pattern='(\S+/)?g?\.?(view|l?n?vim?x?|fzf)(diff)?(-wrapped)?'
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +${vim_pattern}$'"
bind -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

bind -T copy-mode-vi 'C-h' select-pane -L
bind -T copy-mode-vi 'C-j' select-pane -D
bind -T copy-mode-vi 'C-k' select-pane -U
bind -T copy-mode-vi 'C-l' select-pane -R
bind -T copy-mode-vi 'C-\' select-pane -l

# menus

bind C-c menu -T "#[align=centre]Config" -x C -y C \
	"dotfiles"	d	"new-window -c ~/.dotfiles '$SHELL -ic vi'" \
	"bash"		b	"new-window -c ~/.dotfiles/stow/bash '$SHELL -ic vi'" \
	"nix"		n	"new-window -c ~/.dotfiles/stow/nix/.config/nix '$SHELL -ic vi'" \
	"tmux"		t	"new-window -c ~/.dotfiles/stow/tmux/.config/tmux '$SHELL -ic vi'" \
	"vi"		v	"new-window -c ~/.dotfiles/stow/nvim/.config/nvim '$SHELL -ic vi'" \
	"quit"		q	""

# popups

bind C-g popup -d "#{pane_current_path}" -w 90% -h 90% -E "lazygit"
bind C-s popup -E 'bash -i -c "read -p \"Session name: \" name; tmux new-session -d -s \$name && tmux switch-client -t \$name"'
bind C-l popup -E "tmux list-sessions | sed -E 's/:.*$//' | grep -v \"^$(tmux display-message -p '#S')\$\" | fzf --reverse | xargs tmux switch-client -t"
