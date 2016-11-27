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


If direnv is installed: `direnv allow`


## Alternate Installation

Paste this in a terminal, if you dare:

    (
     script=$(curl -fsSL https://git.io/voQ20);
     checksum=$(echo "$script" | shasum -pa256 | cut -c-64);
     test $checksum = 42e182fa823d897bae4db953cc9f065b26ce8590594cb748f9c699ad1ed260bf || exit 1;
     sh -c "$script";
    )

See ["Non-security Concerns"](https://sandstorm.io/news/2015-09-24-is-curl-bash-insecure-pgp-verified-install) for an explanation of why not to just pipe curl to shell. (tl;dr: it's about failure modes, not security!)
