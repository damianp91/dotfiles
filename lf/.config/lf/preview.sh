#!/bin/bash
file="$1"
if [[ "$(file --mime-type -Lb "$file")" == text/* ]]; then
  bat --style=numbers --color=always "$file"
else
  file "$file"
fi
