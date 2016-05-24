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


## Alternate Installation

Paste this in a terminal, if you dare:

    (url='https://raw.githubusercontent.com/doctaphred/home/master/INSTALL';
     checksum_url='https://raw.githubusercontent.com/doctaphred/home/master/INSTALL.sha256';
     script=$(curl -sS $url);
     checksum=$(echo "$script" | shasum -a256);
     test "$checksum" = "$(curl -sS $checksum_url)" && sh -c "$script")

See [Sean Cassidy's post](https://www.seancassidy.me/dont-pipe-to-your-shell.html) for an explanation of why not to just pipe curl to shell. (tl;dr: it's about failure modes, not paranoia!)
