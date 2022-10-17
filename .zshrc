EDITOR='vim'
ZSH_THEME="rainey"

# see: https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_OPTS='--no-height --border=sharp --no-reverse'

# each package creates aliases, exports, etc.
plugins=(
  docker
  docker-compose
  fd
  git
  pyenv
  virtualenv
  zsh-ssh
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

for file in $HOME/.{path,aliases,proxies,extras,fzf.zsh}; do
  [ -f "$file" ] && source "$file";
done;