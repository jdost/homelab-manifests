#!/usr/bin/env bash

set -euo pipefail

echo "$pgpass" > ~/.pgpass
chmod 0600 ~/.pgpass

pg_dump

rm ~/.pgpass
