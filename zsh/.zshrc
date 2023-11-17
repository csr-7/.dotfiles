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

# Rust powered Starship prompt
    # Install:
	# Mac: brew install starship
	# Linux: curl -sS https://starship.rs/install.sh | sh
eval "$(starship init zsh)" 
	#install: curl -sS https://starship.rs/install.sh | sh


