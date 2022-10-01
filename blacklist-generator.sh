#!/usr/bin/env bash
set -euf -o pipefail

BLACKLIST_SOURCE_URLS="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts \
                       https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt"

mkdir -p output
curl -fsL ${BLACKLIST_SOURCE_URLS} | sort -u | \
grep "^0.0.0.0" | grep -v -f ./excludes.txt | \
gzip > output/blacklist.txt.gz
