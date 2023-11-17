# Dotfiles
Managing all things dotfiles with gnu stow. Excellent blog to reference: https://www.jakewiesler.com/blog/managing-dotfiles

## Items that need to be installed (can look to automate this in the future)
1. ZSH - if not already installed and set to default shell
2. Antidote - git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
3. Starship prompt - can be installed via package manager or via shell

After install, while in ~/.dotfiles directory run

```zsh
% stow <package>
```

Example
```zsh
% stow zsh # for all zsh neccessary symlinks
```
