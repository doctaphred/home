alias pt='python -m ptpython'
alias ip='ptipython'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Automatically exec this file on Python startup
export PYTHONSTARTUP=~/.config/python/startup.py
