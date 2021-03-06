#!/usr/bin/env bash

# Clone vundle if it does not already exist.
if [ -d "$HOME/.vim/bundle/Vundle" ]; then
  cd ~/.vim/bundle/vundle/; git pull; cd -;
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

echo -n 'Would you like to install YouCompleteMe support? (y/n)'
read REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cd $HOME/.vim/bundle/YouCompleteMe
  ./install.sh --clang-completer
  cd -
fi;
