#!/bin/bash

# Define log and archive directory paths
LOG_DIR="/var/log"
ARCHIVE_DIR="/var/log/archive"

# Check if the log directory exists, if not print an error message
if [[ ! -d $LOG_DIR ]]; then
    echo "$LOG_DIR not found"
    exit 1
fi

# Check if the archive directory exists, if not create it
if [[ ! -d $ARCHIVE_DIR ]]; then
    echo "Archive directory $ARCHIVE_DIR does not exist. Creating it..."
    mkdir -p $ARCHIVE_DIR || exit 1
fi

# Loop through all files in the log directory that are larger than 1MB
for file_path in $(find $LOG_DIR -maxdepth 1 -type f -size +1M ); do
    # Print the file being copied
    echo "Copying: $file_path"

    # Get the base name of the file (without the path)
    file_name=$(basename $file_path)

    # Create a unique archive file name with the date and time
    archive_file_name=$ARCHIVE_DIR/$file_name-$(date "+%F-%T")

    # Copy the file content to the archive file, clear the original log file, and compress it
    # - The cat command is used to copy the content.
    # - Redirecting the content of the file to the archive file.
    # - After copying, the original log file is cleared (echo "" > $file_path).
    # - Finally, the archive is compressed using gzip.
    cat $file_path >> $archive_file_name && echo "" > $file_path && gzip $archive_file_name

    # Check if the file operations were successful, otherwise exit with an error
    if [[ $? -ne 0 ]]; then
        echo "Error while processing $file_path"
        exit 1
    else
        echo "Successfully archived and compressed $file_path"
    fi
done

