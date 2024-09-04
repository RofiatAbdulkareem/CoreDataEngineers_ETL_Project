#!/bin/bash

# Directory paths
RAW_DIR="raw"
TRANSFORMED_DIR="Transformed"

# Create the transformed directory if it doesn't exist
mkdir -p $TRANSFORMED_DIR

# Check if the raw data file exists
if [ -f "$RAW_DIR/data.csv" ]; then
  echo "Raw data file found. Starting transformation."

  # Perform the transformation
  # 1. Rename column Variable_code to variable_code
  # 2. Select only the columns year, Value, Units, and variable_code

  awk -F, '
  BEGIN {OFS=","}
  NR==1 {
    for (i=1; i<=NF; i++) {
      if ($i == "Variable_code") $i="variable_code"
      if ($i == "year" || $i == "Value" || $i == "Units" || $i == "variable_code") cols[i]=1
    }
    print "year", "Value", "Units", "variable_code"
  }
  NR>1 {
    line=""
    for (i=1; i<=NF; i++) {
      if (cols[i]) {
        line=(line=="")?$i:line","$i
      }
    }
    print line
  }
  ' $RAW_DIR/data.csv > $TRANSFORMED_DIR/2023_year_finance.csv

  # Check if the file has been saved
  if [ -f "$TRANSFORMED_DIR/2023_year_finance.csv" ]; then
    echo "Transformation complete. File saved to the Transformed folder."
  else
    echo "Transformation failed."
    exit 1
  fi
else
  echo "Raw data file not found. Please run the extract script first."
  exit 1
fi
