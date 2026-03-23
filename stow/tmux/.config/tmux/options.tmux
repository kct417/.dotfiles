set -g mouse on
set -g set-clipboard on

set -g default-terminal tmux-256color
set -ga terminal-overrides ,*:Tc

set -g renumber-windows on
set -g base-index 1
set -g pane-base-index 1
setw -g pane-base-index 1

thm_bg=#222436
thm_fg=#c8d3f5
thm_cyan=#86e1fc
thm_gray=#3a3f5a
thm_magenta=#c099ff
thm_red=#ff757f
thm_blue=#82aaff
thm_black=#444a73

# Status bar
set -g focus-events on
set -g status-justify absolute-centre
set -g status-style bg=default
set -g status-left-style bg=default
set -g status-right-style bg=default
set -g status-left-length 100
set -g status-right-length 100

# Messages
set -g message-style fg=${thm_cyan},bg=default,align=centre
set -g message-command-style fg=${thm_cyan},bg=default,align=centre

# Panes
set -g pane-border-style fg=${thm_gray},bg=default
set -g pane-active-border-style fg=${thm_blue},bg=default

# Windows
set -g window-status-activity-style fg=${thm_fg},bg=default,none
set -g window-status-separator ""
set -g window-status-style fg=${thm_fg},bg=default,none

# Statusline - current window
set -g window-status-current-format "#[fg=${thm_blue}] #I: #{?client_prefix,#[fg=${thm_magenta}],#[fg=${thm_cyan}]}(✓) #[fg=${thm_cyan}]#(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) #[fg=${thm_magenta}]"

# Statusline - other windows
set -g window-status-format "#[fg=${thm_blue}] #I: #[fg=${thm_fg}]#W"


# Statusline - left side (empty)
set -g status-left ""

# Statusline - right side
set -g status-right "#[fg=${thm_blue}] [#S]"

# Modes
set -g clock-mode-colour ${thm_blue}
set -g mode-style fg=${thm_blue},bg=${thm_black},bold
