alias p='ptipython'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Django localization utilities
PATH=$PATH:/usr/local/opt/gettext/bin
