#!/bin/sh
set -e

getent passwd user >/dev/null || adduser -D -u $LOCAL_USER_ID user
chown user:user \
	/home/user \
	/venv \
	/venv/bin \
	/venv/lib/python3.8/site-packages \
	/venv/lib/python3.8/site-packages/*

cat <<EOF | /sbin/su-exec user /bin/sh
. /venv/bin/activate
pip install flake8 debugpy watchdog pyyaml argh
EOF