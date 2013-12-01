#1 Clone vundle to dotfiles folder (which it creates)
git clone http://github.com/gmarik/vundle.git ~/dotfiles/.vim/bundle/vundle

#2 Create backup of user dotfiles and custom dotfiles.
mkdir $HOME/dotfiles/backup
echo "Creating a backup of your own dotfiles to $HOME/dotfiles/backup & linking new dotfiles to your system."

for filename in .bash_profile .bash_aliases .vim .vimrc .gitconfig .git-completion.bash
do
  echo "Moving $HOME/$filename to $HOME/dotfiles/backup"
  mv "$HOME/$filename" "$HOME/dotfiles/backup"

  echo "Linking $HOME/dotfiles/$filename to $HOME/$filename"
  ln -s "$HOME/dotfiles/$filename" "$HOME/$filename"
done

#3 Install all the bundles
echo "Installing all bundles with vundle..."
vim +BundleInstall +qall

#4 Update specific bundle requirements.
echo "Compiling YouCompleteMe bundle with C-Family language support."
cd $HOME/dotfiles/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

echo "Installation of dotfiles complete." 
