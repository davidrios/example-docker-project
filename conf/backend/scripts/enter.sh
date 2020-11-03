#!/bin/sh
set -e
. /scripts/base.sh

exec /sbin/su-exec user /bin/sh -c '. /venv/bin/activate && /bin/sh'
