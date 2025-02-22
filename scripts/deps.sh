# These commands are mosty helper methods when moving between machines.

if [[ "$*" == *"python"* ]]; then
  # uv: python package & dependency manager
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

if [[ "$*" == *"fzf"* ]]; then
  fzf="$HOME/.fzf"

  if [ -d "$fzf" ]; then
    cd $fzf && git pull && cd -
  else
    git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
    cd $HOME/.fzf && ./install --no-bash --no-fish --key-bindings --completion --update-rc
  fi;
fi

if [[ "$*" == *"zshp"* ]]; then
  plugins="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"
  git clone https://github.com/sunlei/zsh-ssh $plugins/zsh-ssh
  git clone https://github.com/zsh-users/zsh-autosuggestions $plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $plugins/zsh-syntax-highlighting
fi

if [[ "$*" == *"linux"* ]]; then
  sudo apt-get install \
    zsh \ 
    bat \
    # Useful for install python versions
    build-essential zlib1g-dev libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev
fi
