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
alias gr='git reset'
alias grs='git reset --soft'
alias gf='git fetch'
alias gp='git pull'
alias gpr='git pull --rebase'
alias regit='git stash && git pull --rebase && git stash pop'

ga() {
    git add $@
    git status
}
alias gu='ga --update'
alias gau='gu'

alias such=git
alias very=git
alias much=git
alias many=git
alias wow='git status'
alias amaze='git pull --rebase'
# wow
# such commit
# very push
