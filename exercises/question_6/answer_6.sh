#!/bin/bash

# Determine the directory where the script is located
SCRIPT_DIR="$(dirname "$0")"
TARGET_DIR="$SCRIPT_DIR/answer_6"
TARGET_FILE="$TARGET_DIR/almost_there.txt"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Warning: Directory 'answer_6' does not exist in the script's directory."
# Check if the file exists inside the directory
elif [ ! -f "$TARGET_FILE" ]; then
    echo "Warning: Directory 'answer_6' was found, but 'almost_there.txt' is missing inside it."
# Both exist
else
    echo "Accomplished!"
fi
