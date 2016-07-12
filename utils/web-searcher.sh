#!/bin/bash

URL='https://duckduckgo.com/?q='
QUERY=$(echo '' | dmenu -p " " -fn "-xos4-terminus-medium-r-*-*-14-*")
if [ -n "$QUERY" ]; then
  xdg-open "${URL}${QUERY}" 2> /dev/null
  exec i3-msg [class="^Firefox$"] focus
fi
