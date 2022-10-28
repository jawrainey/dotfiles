#!/usr/bin/env zsh

cp rainey.zsh-theme $HOME/.oh-my-zsh/custom/themes/

rsync \
    --exclude ".git/" \
    --exclude "docs" \
    --exclude ".DS_Store" \
    --exclude "*.sh" \
    --exclude "scripts/" \
    --exclude "README.md" \
    --exclude "LICENSE.txt" \
    --exclude ".docker" \
    --exclude ".proxies" \
    --exclude "*.swp" \
    --exclude "rainey.zsh-theme" \
    -avh --quiet --no-perms . $HOME/;

# Install plugins after we have moved the .vimrc to the home directory.
# This means that the .vim folder is created dynamically with each install.
vim +PluginInstall +qall

source $HOME/.zshrc