#!/bin/bash

file=$1

if [ -z "$file" ]; then
    echo "usage: $0 <filename>"
    exit 1
fi

tmpfile=$(mktemp)
tail -n +2 "$file" >"$tmpfile"

/snap/racket/current/usr/bin/plt-r5rs --no-prim "$tmpfile"
