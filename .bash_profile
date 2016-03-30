# source ~/.bashrc

alias rebp='source ~/.bash_profile'

# Django localization utilities
PATH=$PATH:/usr/local/opt/gettext/bin

color_off='\[\e[0m\]'
black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
gray='\[\e[0;37m\]'

export PS1="${green}\u@\h:${cyan}\w${color_off}$ "

export CLICOLOR=1

export EDITOR='subl -w'

take () {
    mkdir -p $1
    cd $1
}

alias la='ls -A'
alias ll='ls -Alh'

shopt -s autocd

cd () { builtin cd "$@" && ls; }
# PROMPT_COMMAND="${PROMPT_COMMAND} && ls"

alias v='less -RS'
alias e='subl'

alias ag='ag --color-match="1;35" --smart-case --pager "less -R -S"'
alias agp='ag --py'
alias agj='ag --js'

alias ~~='subl ~'
alias bp='subl ~/.bash_profile'
alias br='subl ~/.bashrc'

eval $(thefuck --alias)

# Only source .bashrc for interactive sessions
case $- in
   *i*) source ~/.bashrc
esac

# Only source this file in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.bash_profile_interactive
