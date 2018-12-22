#!/bin/sh
#!/bin/sh
gunicorn --name 'Lavender - Gunicorn' --user lavender --chdir ./ --bind unix:/home/lavender/lavender.sock app:app -k gevent --worker-connections 1001 --workers 4