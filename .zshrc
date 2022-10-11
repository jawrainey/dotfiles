export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
EDITOR='vim'

# NOTE: pyenv use so no need for export
plugins=(docker docker-compose fd git pyenv virtualenv autojump wd zsh-peco-history zsh-ssh zsh-autosuggestions)

# see: https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Any changes to path go through here
source ".path"
source ".aliases"
source ".theme"
source "proxies.sh"

# Config FZF as desired
export FZF_DEFAULT_OPTS='--no-height --no-reverse'

# Poetry
