#!/bin/bash
#

[[ -z "$@" ]] && echo "usage: ignore [file]" || { ([ ! -e .gitignore ] && touch .gitignore); echo $1 >> .gitignore && echo "Ignoring file $1" && "$GIT_EXE" rm --cached "$@" > /dev/null 2>&1 && "$GIT_EXE" st; }