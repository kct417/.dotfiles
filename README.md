# GNU Stow Dotfiles

## Usage

```
git clone --depth=1 git@github.com:kct417/.dotfiles.git
```

```
cd .dotfiles
source installer.sh [install | init | uninstall] [config_name ...]
```

### Neovim

#### Lsp

```
:Copilot setup
```

```
:MasonInstall lua-language-server bash-language-server shellcheck
```

## Limitations

- All scripts must be run from the `.dotfiles` directory.
- Only tested on Ubuntu and WSL.
