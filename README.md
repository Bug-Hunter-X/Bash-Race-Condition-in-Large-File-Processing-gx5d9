# Bash Race Condition in Large File Processing

This repository demonstrates a subtle race condition that can occur in bash scripts when processing large files line by line. The script `bug.sh` reads a file and processes each line.  If the file is modified while the script is running, the script's behavior is undefined and may lead to incorrect results or errors.

The `bugSolution.sh` script provides a solution by using flock to acquire a lock on the file before processing it, preventing concurrent modification.