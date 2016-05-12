#!/bin/sh
set -e

if [ "${1#-}" != "$1" ]; then
	set -- searchd "$@"
fi

if [ "$1" = 'searchd' ]; then
  # If the sphinx config exists, try to run the indexer before starting searchd
  if [ -f /etc/sphinx/sphinx.conf ]; then
    exec "indexer --all"
  fi
fi

exec "$@"
