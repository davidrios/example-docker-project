#!/bin/sh
set -e
. /scripts/base.sh

exec /sbin/su-exec user quasar dev -p $APP_PORT