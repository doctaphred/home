alias ip='python -m IPython'
alias ip2='python2 -m IPython'
alias ip3='python3 -m IPython'

# Default system Python
alias syspy='/usr/bin/python'

# Homebrew-installed Python
alias brewpy2='/usr/local/bin/python2'
alias brewpy3='/usr/local/bin/python3'
alias brewpip2='/usr/local/bin/pip2'
alias brewpip3='/usr/local/bin/pip3'

# macOS-installer Python
alias macpy2='/Library/Frameworks/Python.framework/Versions/2.7/bin/python2'
alias macpip2='/Library/Frameworks/Python.framework/Versions/2.7/bin/pip'
alias macpy3='/Library/Frameworks/Python.framework/Versions/3.5/bin/python3'
alias macpip3='/Library/Frameworks/Python.framework/Versions/3.5/bin/pip'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Automatically exec this file on Python startup
export PYTHONSTARTUP=~/.config/python/startup.py
