#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

until pg_isready -h db -p 5432 -U postgres; do
  echo "Waiting for database..."
  sleep 2
done

bundle exec rails db:prepare

exec "$@"