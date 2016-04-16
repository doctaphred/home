# liquidprompt: https://github.com/nojhan/liquidprompt
source ~/liquidprompt/liquidprompt

for f in ~/.config/bash-interactive/*; do source $f; done

# fzf: https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
