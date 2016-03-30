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
alias e='$EDITOR'

alias ag='ag --color-match="1;35" --smart-case --pager "less -R -S"'
alias agp='ag --py'
alias agj='ag --js'

alias gs='git status'
alias gsh='git show'
alias gst='git stash'
alias gsp='git stash pop'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch'
alias gl='git log'
alias glg='git log --grep'
alias gc='git commit --verbose'
alias gca='git commit --amend'
alias regc='git commit --amend'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gchb='git checkout -b'
alias ga='git add'
alias gau='git add --update && git status'
alias gu='git add --update && git status'
alias gr='git reset'
alias grs='git reset --soft'
alias gf='git fetch'
alias gp='git pull'
alias gpr='git pull --rebase'
alias regit='git stash && git pull --rebase && git stash pop'

alias such=git
alias very=git
alias much=git
alias many=git
alias wow='git status'
alias amaze='git pull --rebase'
# wow
# such commit
# very push

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
