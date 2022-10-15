#!/usr/bin/env zsh

if [[ "$*" == *"update"* ]]; then
  source "deps.sh"
fi

# Make this optional as not needed on personal laptop
if [[ "$*" == *"with_proxies"* ]]; then
  source "proxies.sh"
fi

# Copy dotfiles to home directory.
rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" --exclude "README.md" --exclude "LICENSE.txt" --exclude ".docker" --exclude ".proxies" --exclude "*.swp" --exclude "rainey.zsh-theme" -avh --quiet --no-perms . $HOME/;

# Install plugins after we have moved the .vimrc to the home directory.
# This means that the .vim folder is created dynamically with each install.
vim +PluginInstall +qall

rsync -avh --no-perms --quiet rainey.zsh-theme ~/.oh-my-zsh/custom/themes/

# Display the changes we have made.
source $HOME/.zshrc