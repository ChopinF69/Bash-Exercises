#!/bin/bash
#pentru a redenumi fisierele
for file in *; do
    if [ -f "$file" ]; then
            new_name="${file}.sh"
            mv "$file" "$new_name"
    fi
done

