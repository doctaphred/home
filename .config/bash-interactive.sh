include-all ~/.config/bash-interactive

# direnv: https://github.com/direnv/direnv
eval "$(direnv hook bash)"


# Set up preexec
source ~/dist/preexec/preexec.bash

# function preexec () {
#     echo preexec
# }

# function precmd () {
#     echo precmd
# }

preexec_install
