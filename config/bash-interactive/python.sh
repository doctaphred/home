alias ip='python -m IPython'
alias ip2='python2 -m IPython'
alias ip3='python3 -m IPython'

alias syspy2='/usr/local/bin/python2'
alias syspy3='/usr/local/bin/python3'
alias syspy=syspy3
alias syspip2='/usr/local/bin/pip2'
alias syspip3='/usr/local/bin/pip3'
alias syspip=syspip3

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Automatically exec this file on Python startup
export PYTHONSTARTUP=~/.config/python/startup.py
