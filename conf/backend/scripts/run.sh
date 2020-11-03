#!/bin/sh
set -e
. /scripts/base.sh

cat <<EOF | /sbin/su-exec user /bin/sh
. /venv/bin/activate
python manage.py runserver 0.0.0.0:$APP_PORT
EOF