#!/bin/sh

field="$1"
array1="$2"
array2="$3"

jq -s ".[0] - [ .[1][] as \$item | .[0][] | select(.$field == \$item.$field) ]" "$array1" "$array2"