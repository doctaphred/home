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

# direnv: https://github.com/direnv/direnv
eval "$(direnv hook bash)"

if [ "$PWD" == ~ ]; then
    # Disable direnv message
    # (`unset DIRENV_LOG_FORMAT` in ~/.envrc to restore)
    # TODO: there *must* be a better way!
    export DIRENV_LOG_FORMAT=
fi

# Set up preexec
source ~/dist/preexec/preexec.bash

# function preexec () {
#     echo preexec
# }

# function precmd () {
#     echo precmd
# }

preexec_install
