alias gs='git status'
alias gsh='git show'
alias gshn='git show --name-only'
alias gsn='git show --name-only'
alias gst='git stash'
alias gsts='git stash show'
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
alias gpuf='git push --force-with-lease'

ga() {
    git add $@
    git status
}
alias gu='ga --update'
alias gau='gu'

gl () {
    # %h: abbreviated commit hash
    # %an: author name
    # %cr: committer date, relative
    # %s: subject
    # %d: ref names, like the --decorate option of git-log(1)
    # %C(red): switch to red text
    # %<(16): add spaces on the right to fit the next % to 16 columns; truncate the right side
    git log --pretty=format:'%C(yellow)%h%C(reset) %C(green)%<(16,trunc)%an%C(reset) %C(magenta)%<(14)%cr%C(reset)%C(red)%d%C(reset) %s' $@
}

alias glg='gl | ag'
alias gll='git log'

gcl() {
    git clone git@$1.git
}

ghcl() {
    git clone git@github.com:$1/$2.git
    cd $2
}

bbcl() {
    git clone git@bitbucket.com:$1/$2.git
    cd $2
}

git-set-origin-ssh() {
    git remote remove origin
    git remote add origin git@github.com:doctaphred/${PWD##*/}.git
}

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
include /usr/local/etc/bash_completion.d/git-completion.bash

