#!/bin/bash

# Directory paths
TRANSFORMED_DIR="Transformed"
GOLD_DIR="Gold"

# Create the gold directory if it doesn't exist
mkdir -p $GOLD_DIR

# Check if the transformed file exists
if [ -f "$TRANSFORMED_DIR/2023_year_finance.csv" ]; then
  echo "Transformed file found. Starting load process."

  # Copy the file to the gold directory
  cp $TRANSFORMED_DIR/2023_year_finance.csv $GOLD_DIR/

  # Check if the file has been saved
  if [ -f "$GOLD_DIR/2023_year_finance.csv" ]; then
    echo "Load complete. File saved to the Gold folder."
  else
    echo "Load failed."
    exit 1
  fi
else
  echo "Transformed file not found. Please run the transform script first."
  exit 1
fi
