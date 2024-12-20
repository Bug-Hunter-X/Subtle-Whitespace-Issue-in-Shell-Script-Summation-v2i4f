#!/bin/bash

# This script correctly processes a file containing numbers,
# handling whitespace properly.

while IFS= read -r line; do
  # Extract number using shell parameter expansion to handle spaces directly.
  num=${line//[[:space:]]/} 
  if [[ $num =~ ^[0-9]+$ ]]; then
    ((sum += num))
  fi
  echo "Current sum: $sum"
done < "numbers.txt"

echo "Final sum: $sum"