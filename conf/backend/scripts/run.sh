#!/bin/sh
set -e
. /scripts/base.sh

cat <<EOF | /sbin/su-exec user /bin/sh
. /venv/bin/activate
while true; do
    watchmedo \
        auto-restart \
        -d /code/backend \
        -d /venv/lib/python3.8/site-packages \
        --patterns="*.py" \
        --ignore-patterns="*/migrations/*.py" \
        --recursive \
        -D \
        --kill-after 2 \
        python -- -m debugpy --listen 5678 manage.py runserver --noreload 0.0.0.0:$APP_PORT
    sleep 1
done
EOF
