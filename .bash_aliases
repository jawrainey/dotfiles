#Magically grep and ls aliases 
alias grep="grep --color=always"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ls='ls --color=auto'
alias ll="ls -lh"
alias la="ls -alh"
alias lsd='ls -Gal | grep ^d'
alias lf='ls -Gl | grep ^d'

#Convenience
alias bmod='vim ~/.bashrc'
alias bal='vim ~/.bash_aliases'
alias vmod='vim ~/.vimrc'
alias vi='vim'
alias v='vim'
alias c='clear'
alias cl="clear;ls"
alias ..='cd ..'

#Moving around
alias me='cd ~/;ls'
alias doc='cd ~/Documents/;ls'
alias cs='cd ~/Dropbox/uni/year-two/;ls'
alias code='cd ~/Dropbox/code/;ls'
alias coursera='cd ~/Dropbox/coursera/;ls'
alias dbox='cd ~/Dropbox/;ls'

#Gives you what is using the most space. Both directories and files.
alias most='du -hsx * | sort -rh | head -10'

#ssh connections
alias jawrainey=' ssh jay@jawrainey.me'
alias lapis='ssh C1122445@lapis.cs.cf.ac.uk'
alias csps='ssh C1122445@projectsite.cs.cf.ac.uk'

#Package Management 
alias update='sudo apt-get update && sudo apt-get upgrade'
alias distupdate='sudo apt-get upgrade && dist-upgrade'
alias install='sudo apt-get install' 
alias remove='sudo apt-get remove'  

#Git Commands
alias gpo='git push origin'
alias gp='git pull'
alias gs='git status'
alias gd='git-diff'
alias gr='git-reflog'
alias glf='git-ls-files'
