#!/bin/bash
# Description: This script checks if a file exist in a directory by taking a file name as an argument
# Date Created: 09-MAY-2025
# Date Modified: 14-MAY-2025
# You have to pass a file name as an argument when you want to run the script: Example = ./file_checker.bash "filename.txt"

# Check if an empty argument is passed
if [ -z "$1" ]; then
    echo "Usage: $0 filename"
    exit 1
fi

# Check if the file name passed as an argument exists
if [ -e "$1" ]; then
   echo "File '$1' exists."
else
 echo "File '$1' does not exist."

fi
