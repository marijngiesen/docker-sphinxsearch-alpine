#!/bin/sh
set -e

if [ "${1#-}" != "$1" ]; then
	set -- searchd "$@"
fi

exec "$@"
