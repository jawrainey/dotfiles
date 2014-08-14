# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# history settings
HISTCONTROL=ignoredups
# Append to the Bash history file, rather than overwriting it
shopt -s histappend
# Remember a large history
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE

# Load the shell dotfiles if they exist
for file in ~/.{path,bash_aliases,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source $file;
done;
unset file;

# When git is installed via brew it is sourced in the bash_completion dir
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Urgh! Messy desktops!
# Based on: https://github.com/holman/dotfiles/blob/master/bin/todo
todo() ( touch ~/Desktop/"$1" )
