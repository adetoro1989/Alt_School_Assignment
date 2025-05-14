#!/bin/bash
# Description: This script counts how many files are in a directory and takes the absolute path of the directory as an argument
# NAME: Adetoro Adetunji Olanrewaju
# STUDENT ID: ALT SCHOOL ID: ALT/SOE/024/1852
# Date Created: 14-MAY-2025
# Date Modified: 14-MAY-2025
# You have to pass an absolute pathas an argument when you want to run the script: Example = ./file_count.sh "/absolute/path/to/directory"

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 /absolute/path/to/directory"
    exit 1
fi

# Check if the argument is a valid directory
if [ ! -d "$1" ]; then
    echo "Error: '$1' is not a valid directory."
    exit 1
fi

# Count only regular files within the directory
file_count=$(ls -l "$1" | grep '^-' | wc -l)

echo "Number of regular files in '$1': $file_count"