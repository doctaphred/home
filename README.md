# home
A new take on dotfiles

## Installation

    cd ~
    git init
    git remote add origin git@github.com:doctaphred/home.git
    git fetch
    git reset origin/master
    git branch -u origin/master  # if using older version of git
    # Add and commit any diffs you want to keep
    pray && git checkout .
    git submodule update --init


If direnv is installed:
    direnv allow
