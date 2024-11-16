#!/usr/bin/env bash

set -euo pipefail

echo "$pgpass" > ~/.pgpass
chmod 0600 ~/.pgpass

pg_dump \
    --host=$host \
    --port=$port \
    --username=$username \
    --dbname=$dbname

rm ~/.pgpass
