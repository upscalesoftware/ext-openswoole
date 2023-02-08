#!/bin/sh

repo="$1"

curl -s -X POST "https://api.github.com/repos/$repo/releases" \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    --data-binary @-
