#!/bin/bash

# Environment variable for the URL
URL="https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv"

# Directory to save the raw data
RAW_DIR="raw"

# Create the raw directory if it doesn't exist
mkdir -p $RAW_DIR

# Download the CSV file and save it to the raw folder
wget -O $RAW_DIR/data.csv $URL

# Check if the file has been saved
if [ -f "$RAW_DIR/data.csv" ]; then
  echo "File has been successfully downloaded and saved to the raw folder."
else
  echo "Failed to download the file."
  exit 1
fi

