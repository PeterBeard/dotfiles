#!/bin/bash
# Copy everything in this directory to its home in ~
read -p "This script will overwrite files. Are you sure you want to continue? [y/N] " CONT
if [[ "$CONT" != "y" && "$CONT" != "Y" ]]; then
    exit 1
fi

# Directories
find * -maxdepth 1 -type d -print | while read f; do
    rsync -vr "$f/" "$HOME/.${f#.}"
done

# Files
find * -maxdepth 1 -type f -not -name "*.sh" -not -name "README" -not -name "LICENSE" -print | while read f; do
    rsync -v "$f" "$HOME/.${f#.}"
done
