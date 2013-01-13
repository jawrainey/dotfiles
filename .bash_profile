# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#enable magical colours of utils
export CLICOLOR=1

# history settings
HISTCONTROL=ignoreboth
shopt -s histappend
PROMPT_COMMAND='history -a'
shopt -s checkwinsize
HISTSIZE=10000
HISTFILESIZE=20000
HISTIGNORE=?:??:???:clear:vmod:bmod:bsave:tmux

# Include aliases
if [ -f ~/.bash_aliases ] ; then
    source ~/.bash_aliases
fi

# [folder-name] -> commands
PS1='\[\e[0;33m\][\W] ->\[\e[0m\] '

# if this is an xterm set the title to current directory
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;\w\a\]$PS1"
        ;;
    *)
        ;;
esac

# enable here as it may not be enabled in other sources.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
