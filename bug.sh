#!/bin/bash

# This script attempts to process a large file line by line.
# However, it has a subtle error that can lead to unexpected behavior.

while IFS= read -r line; do
  # Process each line here.  Assume some processing that takes time
  sleep 0.1
  echo "Processing: $line"
done < "large_file.txt"