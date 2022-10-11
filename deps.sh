if [[ "$*" == *"fresh"* ]]; then
  # Pyenv
  git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  cd ~/.pyenv && src/configure && make -C src && cd -
  # Poetry
  curl -sSL https://install.python-poetry.org | python3 -
fi