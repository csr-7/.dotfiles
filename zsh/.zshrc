# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Cross-platform ZSH config ###

## Setup Antidote for zsh plugin management ##

# Lazy-load antidote and generate the static load file only when needed
zsh_plugins=${ZDOTDIR:-$HOME}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source ~/.antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >${zsh_plugins}.zsh
  )
fi
source ${zsh_plugins}.zsh

## Aliases
# check if exa is installed and if it is setup alias for ls
if type eza >/dev/null 2>&1; then
    alias ls="eza -lh"
    alias la="eza -lha"
    alias l="eza"
fi

# check if bat is installed and if it is setup alias for cat
if type bat >/dev/null 2>&1; then
    alias cat="bat"
fi

# check if nvim is installed and if it is setup alias for vim
if type nvim >/dev/null 2>&1; then
    alias vim="nvim"
fi

# Screenfetch startup
if type screenfetch >/dev/null 2>&1; then
    screenfetch
fi

alias py="python3"

## Prompt Customization
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Rust powered Starship prompt
    # Install:
	# Mac: brew install starship
	# Linux: curl -sS https://starship.rs/install.sh | sh
#eval "$(starship init zsh)" 
	#install: curl -sS https://starship.rs/install.sh | sh
