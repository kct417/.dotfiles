set -g mouse on
set -g set-clipboard on
set -g extended-keys on

set -g default-terminal tmux-256color
set -as terminal-features ,*:RGB
set -s escape-time 10

set -g renumber-windows on
set -g base-index 1
set -wg pane-base-index 1

# theme

fg=#c8d3f5
cyan=#86e1fc
gray=#3a3f5a
magenta=#c099ff
blue=#82aaff

# Status bar
set -g focus-events on
set -g status-style bg=default
set -g status-left-length 99
set -g status-right-length 99
set -g status-justify centre

# Messages
set -g message-style fg=${cyan},align=centre
set -g message-command-style fg=${cyan},align=centre

# Panes
set -g pane-border-style fg=${gray}
set -g pane-active-border-style fg=${blue}

# Windows
set -g window-status-separator ""
set -g window-status-style fg=${fg}
set -g window-status-activity-style fg=${fg}

# Statusline - current window
set -g window-status-current-format "#[fg=${blue}] #I: #{?client_prefix,#[fg=${magenta}],#[fg=${cyan}]}(✓) #[fg=${cyan}]#{b:d:pane_current_path}/#{b:pane_current_path}"

# Statusline - other windows
set -g window-status-format "#[fg=${blue}] #I: #[fg=${fg}]#W"


# Statusline - left side (empty)
set -g status-left ""

# Statusline - right side
set -g status-right "#[fg=${blue}] [#S]"

# Modes
set -g clock-mode-colour ${blue}
set -g mode-style fg=${blue},bold
