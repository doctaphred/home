# liquidprompt: https://github.com/nojhan/liquidprompt
source ~/liquidprompt/liquidprompt

# fzf: https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

for f in ~/.config/bash-interactive/*; do source $f; done
