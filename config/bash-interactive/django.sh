# Django localization utilities
PATH=$PATH:/usr/local/opt/gettext/bin

alias dj='django-admin'

alias m='./manage.py'
alias mr='./manage.py runserver'
alias mrp='./manage.py runserver 0.0.0.0:8000'  # "runserver (public)"
alias ms='./manage.py shell'
alias msh='./manage.py shell'
alias mm='./manage.py migrate'
alias mmk='./manage.py makemigrations'
alias mmkm='./manage.py makemigrations'
alias mshm='./manage.py showmigrations'
alias msqm='./manage.py squashmigrations'
alias md='./manage.py dumpdata'
alias mdd='./manage.py dumpdata'
alias ml='./manage.py loaddata'
alias mld='./manage.py loaddata'
alias mt='./manage.py test'

mig () {
    ./manage.py makemigrations $@
    ./manage.py migrate
}
