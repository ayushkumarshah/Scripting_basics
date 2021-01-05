#!/bin/bash

SEARCH_DIR=$HOME/Downloads

FOUND_DIR=$HOME/Desktop/codes/found
mkdir -p $FOUND_DIR

# Search according to modified time less than 1 day ago
find $SEARCH_DIR -mtime -1 -type f -iname "*.txt" | xargs -I % cp % $FOUND_DIR
# -1 means 1 day ago
# f means search limited to only files

# xargs used to pass output of 1st command as argument to 2nd command.
# -I is used to create a placeholder for the argument. 
# % is the placeholder. It can be symbols other than % as well.
