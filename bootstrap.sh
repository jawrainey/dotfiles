#!/usr/bin/env zsh

rsync -avh --no-perms --quiet rainey.zsh-theme $HOME/.oh-my-zsh/custom/themes/

rsync --exclude ".vimrc" --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" --exclude "scripts/" --exclude "README.md" --exclude "LICENSE.txt" --exclude ".docker" --exclude "*.swp" --exclude "rainey.zsh-theme" -avh --quiet --no-perms . $HOME/;

source $HOME/.zshrc