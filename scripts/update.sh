#!/bin/bash

# Update the system and handle potential interruptions
echo "Starting system update..."
if ! alacritty -e sudo pacman -Syu; then
    echo "Error: System update failed. Check for conflicts or network issues." >&2
    exit 1
fi

# Post-update recommendations
echo -e "\nUpdate completed!"
echo "Note:"
echo "1. If the kernel was updated, consider rebooting your system."
echo "2. Check for '.pacnew' files with 'find /etc -name *.pacnew' and update configurations."
echo "3. Orphaned packages can be removed with 'pacman -Rns \$(pacman -Qtdq)'."
echo "4. Clean the package cache with 'pacman -Sc' if needed."
