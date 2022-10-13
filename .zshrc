# Preferred editor for local and remote sessions
EDITOR='vim'

# see: https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# each package creates aliases, exports, etc.
plugins=(docker docker-compose fd git pyenv virtualenv wd zsh-ssh zsh-autosuggestions)

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
source "$HOME/.path"
source "$HOME/.aliases"
source "$HOME/.theme"
source "$HOME/.zprofile"
source "$HOME/.proxies"

# Config FZF as desired
export FZF_DEFAULT_OPTS='--no-height --border=sharp --no-reverse'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh