STOW_DIR=~/.dotfiles/stow/bash
BIN_DIR=~/.dotfiles/bin
BASHRC_STOW=$STOW_DIR/.bashrc

if ! grep -qxF "PATH=\"\$HOME/.local/bin:\$PATH\"" $BASHRC_STOW; then
    echo "PATH=\"\$HOME/.local/bin:\$PATH\"" >> $BASHRC_STOW
fi

if ! grep -qxF "source $BIN_DIR/agent.sh" $BASHRC_STOW; then
    echo "source $BIN_DIR/agent.sh" >> $BASHRC_STOW
fi

if ! grep -qxF "if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi" $BASHRC_STOW; then
    echo "if command -v zoxide >/dev/null 2>&1; then eval \"\$(zoxide init bash --cmd cd)\"; fi" >> $BASHRC_STOW
fi

