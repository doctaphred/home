alias rebp='source ~/.bash_profile'

# Disable caching, 'cause it sucks
# https://twitter.com/doctaphred/status/721423180414480384
set +h

# cd by typing a directory's name
shopt -s autocd

color_off='\[\e[0m\]'
black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
gray='\[\e[0;37m\]'

# This will get overwritten by liquidprompt, if it's installed.
export PS1="${green}\u@\h:${cyan}\w${color_off}$ "

export EDITOR='subl -w'

# mkdir, then cd into it. Surprisingly useful.
take () {
    mkdir -p $1
    cd $1
}

# Enable ls colors
export CLICOLOR=1

alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -Alh'

# List directories
lsd () {
    ls -F "$@" | grep \/$
}

# ls-after-cd, from http://pastebin.com/VBSQJyeA
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD'

alias v='less -RS'
alias e='subl'

alias ag='ag --smart-case --pager "less -R -S" --skip-vcs-ignores'
alias agp='ag --py'
alias agj='ag --js'

alias ~~='subl ~'
alias bp='subl ~/.bash_profile'
alias br='subl ~/.bashrc'

eval $(thefuck --alias)

alias ackbar='afplay ~/Dropbox/etc/ackbar.mp3'

# Only source this file in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.config/bash-interactive.sh
