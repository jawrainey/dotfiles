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
for file in ~/.{bash_aliases,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source $file;
done;
unset file;

# enable here as it may not be enabled in other sources.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Git auto-completion
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Urgh! Messy desktops!
# Based on: https://github.com/holman/dotfiles/blob/master/bin/todo
todo() ( touch ~/Desktop/"$1" )
