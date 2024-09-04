#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/c/Users/USER/Downloads/csvjson"
DEST_DIR="/c/Users/USER/ETL_Project/json_and_CSV"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Source directory does not exist: $SOURCE_DIR"
  exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Move CSV and JSON files from the source to the destination directory
find "$SOURCE_DIR" -type f \( -name "*.csv" -o -name "*.json" \) -exec mv {} "$DEST_DIR" \;

# Verify if files have been moved
if [ "$(ls -A "$DEST_DIR")" ]; then
  echo "Files have been successfully moved to $DEST_DIR."
else
  echo "No CSV or JSON files were found in the source directory."
fi

