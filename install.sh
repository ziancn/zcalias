#!/bin/bash

ALIAS_FILE="$HOME/.zc_alias"
cp zc_alias.sh "$ALIAS_FILE"

# Add source cmd to .bashrc if it does not exist
if ! grep -q "source $ALIAS_FILE" "$HOME/.bashrc"; then
    echo "source $ALIAS_FILE" >> "$HOME/.bashrc"
fi

echo "zcalias have been installed. Please run 'source ~/.bashrc' to activate."
