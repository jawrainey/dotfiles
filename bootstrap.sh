#!/usr/bin/env zsh

# Clone vundle if it does not already exist.
if [ -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  cd ~/.vim/bundle/Vundle.vim/; git pull; cd -;
else
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi;

# Copy dotfiles to home directory.
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" \
  --exclude "LICENSE.txt" --exclude "*.swp" -avh --no-perms . $HOME/;

# Install plugins after we have moved the .vimrc to the home directory.
# This means that the .vim folder is created dynamically with each install.
vim +PluginInstall +qall

# Display the changes we have made.
source $HOME/.zshrc