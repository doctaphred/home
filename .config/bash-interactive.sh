# liquidprompt: https://github.com/nojhan/liquidprompt
if [ -f /usr/local/share/liquidprompt ]; then
    source /usr/local/share/liquidprompt
fi

# TODO: remove when properly installed across whole fleet
if [ -f ~/liquidprompt/liquidprompt ]; then
    source ~/liquidprompt/liquidprompt
fi

# fzf: https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

for f in ~/.config/bash-interactive/*; do source $f; done
