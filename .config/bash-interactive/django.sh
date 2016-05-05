# Django localization utilities
PATH=$PATH:/usr/local/opt/gettext/bin

alias m='./manage.py'
alias mr='./manage.py runserver'
alias mrp='./manage.py runserver 0.0.0.0:8000'
alias ms='./manage.py shell'
alias mm='./manage.py migrate'
alias mmk='./manage.py makemigrations'
alias msh='./manage.py showmigrations'
alias msq='./manage.py squashmigrations'
alias md='./manage.py dumpdata'
alias ml='./manage.py loaddata'
alias mt='./manage.py test'

mig () {
    ./manage.py makemigrations $@
    ./manage.py migrate
}
