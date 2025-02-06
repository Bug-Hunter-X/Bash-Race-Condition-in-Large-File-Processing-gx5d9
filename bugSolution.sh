#!/bin/bash

flock -n -x "large_file.txt" || exit 1

while IFS= read -r line; do
  # Process each line here
  sleep 0.1
  echo "Processing: $line"
done < "large_file.txt"

# Release the lock (automatically released on exit)
# echo "Processing complete."