#Magically grep and ls aliases 
alias grep="grep --color=always"
alias ls='ls -G'
alias ll="ls -lh"
alias la="ls -alh"
alias lsd='ls -Gal | grep ^d'
alias lf='ls -Gl | grep ^d'

#Convenience
alias bmod='vim ~/.bash_profile'
alias bal='vim ~/.bash_aliases'
alias vmod='vim ~/.vimrc'
alias vi='vim'
alias v='vim'
alias c='clear'
alias cl="clear;ls"
alias ..='cd ..'

#Moving around
alias me='cd ~/;ls'
alias htdocs='cd /Applications/MAMP/htdocs;ls'
alias doc='cd ~/Documents/;ls'
alias cs='cd ~/Dropbox/uni/year-two/;ls'
alias code='cd ~/Dropbox/code/;ls'
alias euler='cd ~/Dropbox/code/euler;ls'
alias coursera='cd ~/Dropbox/coursera/;ls'
alias dbox='cd ~/Dropbox/;ls'

#Gives you what is using the most space. Both directories and files.
alias most='du -hsx * | sort -nr | head -5'

#ssh connections
alias jawrainey=' ssh jaqera@jawrainey.me'
alias lapis='ssh C1122445@lapis.cs.cf.ac.uk'
alias csps='ssh C1122445@websites.cs.cf.ac.uk'

#Git Commands
alias gpo='git push origin'
alias gp='git pull'
alias gs='git status'
