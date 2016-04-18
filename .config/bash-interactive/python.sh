alias p='ptipython'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Automatically exec this file on Python startup
export PYTHONSTARTUP=~/.config/python/startup.py

# Django localization utilities
PATH=$PATH:/usr/local/opt/gettext/bin
