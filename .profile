
# Source the file, if it exists
include() {
    test -f "$1" && source "$1"
}

# Source all files in a directory
include-all() {
    for f in "$1"/*; do source $f; done
}

export PATH=~/bin:$PATH

# Add platform-specific binaries to path
# ex: ~/bin/"$(uname -s)"-"$(uname -m)" => ~/bin/Darwin-x86_64
export PATH=~/bin/"$(uname -s)"-"$(uname -m)":$PATH

# ls-after-cd, from http://pastebin.com/VBSQJyeA
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD'

# Better history management, from http://unix.stackexchange.com/a/48113/134011
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Disable caching, 'cause it sucks
# https://twitter.com/doctaphred/status/721423180414480384
set +h

# cd by typing a directory's name
shopt -s autocd
- () {
    cd -
}

color_off='\[\e[0m\]'
black='\[\e[0;30m\]'
red='\[\e[0;31m\]'
green='\[\e[0;32m\]'
bold_green='\[\e[01;32m\]'
yellow='\[\e[0;33m\]'
blue='\[\e[0;34m\]'
bold_blue='\[\e[01;34m\]'
purple='\[\e[0;35m\]'
cyan='\[\e[0;36m\]'
gray='\[\e[0;37m\]'

# This will get overwritten by liquidprompt, if it's installed.
export PS1="${bold_green}\u@\h${color_off}:${bold_blue}\w${color_off}$ "

# TODO: rmate if remote
export EDITOR='subl --new-window --wait'

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
alias lal='ls -Alh'
alias lah='ls -lAh'

# List directories
lsd () {
    ls -F "$@" | grep \/$
}

export LESS="\
--chop-long-lines \
--HILITE-UNREAD \
--ignore-case \
--LINE-NUMBERS \
--LONG-PROMPT \
--RAW-CONTROL-CHARS \
"

# Auto syntax highlight with pygments, if present (-g: "guess")
exists pygmentize && export LESSOPEN='|pygmentize -g %s'

vv () {
    # View the command's stdout and stderr in less.
    $@ 2>&1 | less
}

alias v=less
alias edit='subl --new-window'
alias e=edit

alias ag='ag --smart-case --pager "less -R -S"'
alias aga='ag --smart-case --pager "less -R -S" --skip-vcs-ignores'
alias agp='ag --py'
alias agj='ag --js'

alias ~~='subl ~'
alias pr='subl ~/.profile'

alias ackbar='afplay ~/Dropbox/etc/ackbar.mp3'

# Only source this file in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.config/bash-interactive.sh

include ~/private/profile.sh
include ~/local/profile.sh
