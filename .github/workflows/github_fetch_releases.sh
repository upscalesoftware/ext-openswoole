#!/bin/sh

repo="$1"

curl -s -L "https://api.github.com/repos/$repo/releases?per_page=100&page=[1-5]" \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
  | jq '.[] |= if (.name == "") then .name = .tag_name else . end' \
  | jq '.[].tag_name |= ltrimstr("swoole-")' \
  | jq -s add