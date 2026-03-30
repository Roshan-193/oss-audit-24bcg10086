#!/bin/bash
# Script 4: Log Keyword Scanner
# Author: Roshan Gayakwad

FILE_PATH=$1
SEARCH_TERM=${2:-"error"}
MATCH_COUNT=0

if [ ! -f "$FILE_PATH" ]; then
    echo "Invalid file path!"
    exit 1
fi

while IFS= read -r TEXT; do
    if echo "$TEXT" | grep -iq "$SEARCH_TERM"; then
        ((MATCH_COUNT++))
    fi
done < "$FILE_PATH"

echo "The term '$SEARCH_TERM' occurred $MATCH_COUNT times."

echo ""
echo "Recent matches (last 5):"
grep -i "$SEARCH_TERM" "$FILE_PATH" | tail -n 5