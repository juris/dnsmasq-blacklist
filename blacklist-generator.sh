#!/usr/bin/env bash
set -euf -o pipefail

BLACKLIST_SOURCE_URL="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"

mkdir -p output
curl -fsL ${BLACKLIST_SOURCE_URL} | \
grep "^0.0.0.0" | grep -v "www.googleadservices.com" | \
gzip > output/blacklist.txt.gz