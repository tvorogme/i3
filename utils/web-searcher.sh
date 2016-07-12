#!/bin/bash

URL='https://duckduckgo.com/?q='
QUERY=$(cat /home/true/.config/i3/utils/helpers/search-words | dmenu -p "Search " -fn '-xos4-terminus-medium-r-*-*-14-*')
if [ -n "$QUERY" ]; then
  xdg-open "${URL}${QUERY}" 2> /dev/null
  exec i3-msg [class="^Firefox$"] focus
fi
