#!/bin/sh
set -e

getent passwd node >/dev/null && deluser node
getent passwd user >/dev/null || adduser -D -u $LOCAL_USER_ID user

chown user:user /home/user

export PATH=/code/frontend/node_modules/.bin:$PATH
cd /code/frontend

/sbin/su-exec user yarn
