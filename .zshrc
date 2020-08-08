# Any changes to path go through here
[[ -f "$HOME/.path" ]] && source "$HOME/.path"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sorin"

plugins=(colorize docker docker-compose fd git osx poetry ssh-agent virtualenv wd zsh-autosuggestions zsh-peco-history)

# see: https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
EDITOR='vim'

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export VIRTUAL_ENV_DISABLE_PROMPT=yes

# Add 've' to prompt when in virtual env
function virtenv_indicator {
    if [[ -z $VIRTUAL_ENV ]] then
        psvar[1]=''
    else
        psvar[1]='ve'
    fi
}

add-zsh-hook precmd virtenv_indicator
