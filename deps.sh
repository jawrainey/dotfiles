# These commands are mosty helper methods when moving between machines.

if [[ "$*" == *"vim"* ]]; then
  vundle="$HOME/.vim/bundle/Vundle.vim"

  if [ -d "$vundle" ]; then
    cd $vundle; git pull; cd -;
  else
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi;
fi

if [[ "$*" == *"python"* ]]; then
  # pyenv: python version manager
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  cd $HOME/.pyenv && make -C src && cd $HOME

  # poetry: python package dependency manager
  curl -sSL https://install.python-poetry.org | python3 -
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
