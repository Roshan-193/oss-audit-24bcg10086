#!/bin/bash
# Script 5: Personal Open Source Note
# Author: Roshan Gayakwad

echo "Fill in the details below:"

read -p "Your favorite tool: " TOOL_NAME
read -p "Meaning of freedom: " MEANING
read -p "What you aim to create: " GOAL

TODAY=$(date "+%d %B %Y")
OUTPUT_FILE="oss_note_$(whoami).txt"

{
echo "===== Open Source Reflection ====="
echo "Date: $TODAY"
echo ""
echo "For me, open source stands for $MEANING."
echo "Tools like $TOOL_NAME empower developers."
echo "I plan to build $GOAL and share it with the community."
} > "$OUTPUT_FILE"

echo "File saved as: $OUTPUT_FILE"
echo ""
cat "$OUTPUT_FILE"