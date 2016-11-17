alias ip='python -m IPython'
alias ip2='python2 -m IPython'
alias ip3='python3 -m IPython'

# Declare some variables for use with virtualenv, etc

# Default system Python
syspy='/usr/bin/python'

# Homebrew-installed Python
brewpy2='/usr/local/bin/python2'
brewpy3='/usr/local/bin/python3'
brewpip2='/usr/local/bin/pip2'
brewpip3='/usr/local/bin/pip3'

# macOS-installer Python
macpy2='/Library/Frameworks/Python.framework/Versions/2.7/bin/python2'
macpip2='/Library/Frameworks/Python.framework/Versions/2.7/bin/pip'
macpy3='/Library/Frameworks/Python.framework/Versions/3.5/bin/python3'
macpip3='/Library/Frameworks/Python.framework/Versions/3.5/bin/pip'

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Disable buffered output to avoid strange problems
export PYTHONUNBUFFERED=1

# Automatically exec this file on Python startup
export PYTHONSTARTUP=~/.config/python/startup.py
