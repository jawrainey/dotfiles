if [[ "$*" == *"fresh"* ]]; then
  # pyenv: python version manager
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  cd $HOME/.pyenv && src/configure && make -C src && cd $HOME
  
  # poetry: python package dependency manager
  curl -sSL https://install.python-poetry.org | python3 -
  
  # fzf: auto complete for history/search 
  cd $HOME && \
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf && \
  ./.fzf/install --no-bash --no-fish --key-bindings --completion --update-rc

  # zsh plugins
  git clone https://github.com/sunlei/zsh-ssh ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-ssh

  # sudo apt install bat
fi