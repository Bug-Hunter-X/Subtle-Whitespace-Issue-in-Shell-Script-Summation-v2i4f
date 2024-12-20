#!/bin/bash

# This script attempts to process a file containing numbers,
# but it has a subtle bug related to how it handles whitespace.

while IFS= read -r line; do
  num=$(echo "$line" | tr -d '[:space:]') # Remove whitespace
  if [[ $num =~ ^[0-9]+$ ]]; then
    ((sum += num))
  fi
  echo "Current sum: $sum"
done < "numbers.txt"

echo "Final sum: $sum"