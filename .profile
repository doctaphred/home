alias please=sudo

# Source the file, if it exists
include() {
    test -f "$1" && source "$1"
}

# Source all files in a directory
include-all() {
    for f in "$1"/*; do source $f; done
}

exists () {
    # Check if the command(s) exist(s)
    type $@ >/dev/null 2>&1
}

if-exists () {
    # Excecute the command, if it exists.
    exists $1 && $@
}

export PATH=~/bin:$PATH

# Add platform-specific binaries to path
# ex: ~/bin/"$(uname -s)"-"$(uname -m)" => ~/bin/Darwin-x86_64
export PATH=~/bin/"$(uname -s)"-"$(uname -m)":~/bin/"$(uname -s)":$PATH

# ls-after-cd, from http://pastebin.com/VBSQJyeA
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD'

# Better history management, from http://unix.stackexchange.com/a/48113/134011
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Disable caching, 'cause it sucks
# https://twitter.com/doctaphred/status/721423180414480384
set +h

# cd by typing a directory's name
shopt -s autocd
- () {
    cd -
}

reset='\[\e[0m\]'
bold='\[\e[1m\]'
black='\[\e[0;30m\]'
bold_black='\[\e[01;30m\]'
red='\[\e[0;31m\]'
bold_red='\[\e[01;31m\]'
green='\[\e[0;32m\]'
bold_green='\[\e[01;32m\]'
yellow='\[\e[0;33m\]'
yellow='\[\e[01;33m\]'
blue='\[\e[0;34m\]'
bold_blue='\[\e[01;34m\]'
purple='\[\e[0;35m\]'
bold_purple='\[\e[01;35m\]'
cyan='\[\e[0;36m\]'
bold_cyan='\[\e[01;36m\]'
gray='\[\e[0;37m\]'
bold_gray='\[\e[01;37m\]'

# This will get overwritten by liquidprompt, if it's installed.
function fancy_ps1 {
    local __user_and_host="${bold_green}\u@\h${reset}"
    local __venv_func='`[ -n "$VIRTUAL_ENV" ] && echo "[venv] "`'
    local __venv_info="${bold_cyan}${__venv_func}${reset}"
    local __working_dir="${bold_blue}\w${reset}"
    local __git_func='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __git_info="${bold_purple}${__git_func}${reset}"
    local __prompt="${reset}${bold}$ ${reset}"
    export PS1="${reset}${__user_and_host} ${__venv_info}${__working_dir} ${__git_info}${__prompt}"
}
fancy_ps1


# TODO: rmate if remote
export EDITOR='subl --new-window --wait'
# TODO: use VISUAL instead of EDITOR?
export VISUAL='subl --new-window --wait'

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

alias rmr='rm -r'
alias rmrf='rm -rf'

export LESS="\
--chop-long-lines \
--HILITE-UNREAD \
--ignore-case \
--LONG-PROMPT \
--RAW-CONTROL-CHARS \
"

# Auto syntax highlight with pygments, if present (-g: "guess")
exists pygmentize && export LESSOPEN='|pygmentize -g %s'

mergeout () {
    # Run the command, merging stderr to stdout.
    # Also consider `|&` (pipe both stdout and stderr)
    # (bash only; not available in sh)
    $@ 2>&1
}

job() {
    # Start a background process, ignoring stdout and stderr
    $@ > /dev/null 2>&1 &
}

v () {
    # "View"
    less $@
}

vv () {
    # View the command's stdout and stderr in less.
    # Don't preprocess with pygmentize,
    # since it will likely not work.
    # (Also it's slow.)
    $@ 2>&1 | less --no-lessopen
}

alias edit='subl --new-window'
alias e=edit

alias ag='ag --smart-case --pager "less -R -S"'
alias aga='ag --smart-case --pager "less -R -S" --skip-vcs-ignores'
alias agp='ag --py'
alias agj='ag --js'

alias ~~='subl --project ~/subl/home.sublime-project'
alias pr='subl ~/.profile'

alias ackbar='afplay ~/Dropbox/etc/ackbar.mp3'

alias chmod-yolo='chmod 777'

# Only source this file in interactive shells, not from a script or from scp
[[ $- = *i* ]] && source ~/.config/bash-interactive.sh

include ~/private/profile.sh
include ~/local/profile.sh
