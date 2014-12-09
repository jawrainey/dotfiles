#Convenience
alias v='vim'
alias c="clear"
alias cl="clear;ls"
alias ..='cd ..'
alias ipy="ipython"
alias dev='cd ~/Dropbox/dev/;ls'
alias sf='vim ~/Dropbox/dev/spark.md'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -l ${colorflag}"
# List all files colorized in long format, including dot files
alias la="ls -la ${colorflag}"
# Always use color output for `ls`
alias ls="command ls ${colorflag}"
