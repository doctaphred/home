alias gs='git status'
alias gsh='git show'
alias gshn='git show --name-only'
alias gsn='git show --name-only'
alias gst='git stash'
alias gstl='git stash list'
alias gsl='git stash list'
alias gstp='git stash pop'
alias gsp='git stash pop'
alias gd='git diff'
alias gdc='git diff --cached'
alias gb='git branch'
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
alias gpu='git push'

ga() {
    git add $@
    git status
}
alias gu='ga --update'
alias gau='gu'

gl () {
    # %h: abbreviated commit hash
    # %d: ref names, like the --decorate option of git-log(1)
    # %s: subject
    # %cr: committer date, relative
    # %an: author name
    git log --pretty=format:'%C(yellow)%h%C(red)%d%C(reset) %s %C(magenta)(%cr)%C(reset) %C(green)<%an>%C(reset)' $@
}

alias glg='gl | ag'
alias gll='git log'

alias such=git
alias very=git
alias much=git
alias many=git
alias wow='git status'
alias amaze='git push'
# wow
# such commit
# very pull
# amaze


# bash completion
source /usr/local/etc/bash_completion.d/git-completion.bash
