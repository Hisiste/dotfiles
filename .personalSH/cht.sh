#!/usr/bin/env bash

LANG_TMP="LANGUAGES"

NAME=$(basename $0)
TMP_DIRS=$(find /tmp -maxdepth 1 | grep $NAME)
if [ -z "$TMP_DIRS" ]; then
    # Making temp files:
    # https://stackoverflow.com/questions/10982911/creating-temporary-files-in-bash
    MY_TMP=$(mktemp -d "${TMPDIR:-/tmp/}$(basename $0).XXXXXXXXXXXX")
else
    MY_TMP="$TMP_DIRS"
fi


# Check if file exists
# https://www.geeksforgeeks.org/bash-scripting-how-to-check-if-file-exists/
if [ -f "$MY_TMP/$LANG_TMP" ]; then
    LANGUAGES=$(< $MY_TMP/$LANG_TMP)
else
    LANGUAGES=$(
        curl --silent "http://cht.sh/:list" | \
        grep --invert-match -E "\/.+" | \
        grep -o -E ".*[^\/$]" | \
        uniq
    )
    echo "$LANGUAGES" > "$MY_TMP/$LANG_TMP"
fi

LANGUAGE=$(echo "$LANGUAGES" | fzf)
read -p "Enter query: " QUERY


if [ -z "$QUERY" ]; then
    URL=$(echo "http://cht.sh/$LANGUAGE" | sed 's/\ /\%20/g')
else
    URL=$(echo "http://cht.sh/$LANGUAGE/$QUERY" | sed 's/\ /\%20/g')
fi


curl --silent $URL | less -R
