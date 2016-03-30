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
alias ll='ls -Al'

shopt -s autocd

cd () { builtin cd "$@" && ls; }
# PROMPT_COMMAND="${PROMPT_COMMAND} && ls"

alias v='less -RS'
alias e='$EDITOR'

alias ag='ag --color-match="1;35" --smart-case --pager "less -R -S"'
alias agp='ag --py'
alias agj='ag --js'

alias gs='git status'
alias gsh='git show'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch'
alias gl='git log'
alias gc='git checkout'
alias regit='git stash && git pull && git stash pop'

alias such=git
alias very=git
alias much=git
alias many=git
alias wow='git status'
alias amaze='git pull --rebase'
# wow
# such commit
# very push

alias s~='subl ~'
alias sbp='subl ~/.bash_profile'
alias sbr='subl ~/.bashrc'

alias p2='ptipython'
alias p3='ptipython3'

eval $(thefuck --alias)

# Only source .bashrc for interactive sessions
case $- in
   *i*) source ~/.bashrc
esac
