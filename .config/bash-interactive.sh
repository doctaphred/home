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
