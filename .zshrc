# Any changes to path go through here
source "$HOME/.path"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sorin"

plugins=(docker docker-compose fd git osx pyenv virtualenv wd zsh-autosuggestions zsh-peco-history)

# see: https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

source $ZSH/oh-my-zsh.sh
source "$HOME/.aliases"

export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
EDITOR='vim'

VIRTUAL_ENV_DISABLE_PROMPT=yes

function virtenv_indicator {
  if [[ -z $VIRTUAL_ENV ]] then
    psvar[1]=''
  else
    psvar[1]='(ve) '
  fi
}

add-zsh-hook precmd virtenv_indicator

PROMPT='%(1V.%1v.)'$PROMPT
