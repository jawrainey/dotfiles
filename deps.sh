if [[ "$*" == *"fresh"* ]]; then
  # Useful for install python versions
  sudo apt-get install build-essential zlib1g-dev libffi-dev libssl-dev libbz2-dev libreadline-dev libsqlite3-dev liblzma-dev
  
  # pyenv: python version manager
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  cd $HOME/.pyenv && src/configure && make -C src && cd $HOME

  # poetry: python package dependency manager
  curl -sSL https://install.python-poetry.org | python3 -

  # fzf: auto complete for history/search
  cd $HOME && \
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && \
  cd $HOME/.fzf && ./install --no-bash --no-fish --key-bindings --completion --update-rc

  # TODO: what about zsh?
  sudo apt install zsh

  # zsh plugins
  git clone https://github.com/sunlei/zsh-ssh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-ssh
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # TODO: what about fzf?

  # sudo apt install bat
fi
