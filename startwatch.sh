konsole --workdir ~/django/pysite -e python3 manage.py runserver &
konsole --workdir ~/django/pysite/mathvisualized/static/mathvisualized/es6 -e gulp &
konsole --workdir ~/django/pysite/mathvisualized/static/mathvisualized -e node-sass --watch sass -o css &


