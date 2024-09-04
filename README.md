# CoreDataEngineers_ETL_Project

## Overview

This repository contains the scripts, SQL queries and the architectural diagram used for the ETL process and data analysis for CoreDataEngineers. 

## Directory Structure

- **Scripts/**
  - **Bash_Scripts/**: Contains Bash scripts for ETL processes.
    - `Extract.sh`: Script to download and save CSV files.
    - `Transform.sh`: Script to transform CSV data.
    - `Load.sh`: Script to load transformed data into the database.

  - **SQL_Scripts/**: Contains SQL queries for data analysis.

    - `sql_script`: Query to find the following:
       - Find a list of order IDs where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table. 
       - Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
       - Find all the company names that start with a 'C' or 'W', and where the primary contact contains 'ana' or 'Ana', but does not contain 'eana'.
       - Provide a table that shows the region for each sales rep along with their associated accounts. Your final table should include three columns: the region name, the sales rep name, and the account name. Sort the accounts alphabetically (A-Z) by account name. */

## How to Use

1. **Running Bash Scripts**
   - Make sure the scripts have execute permissions.
   - Execute each script in sequence:
     ```bash
     ./Scripts/Bash_Scripts/Extract.sh
     ./Scripts/Bash_Scripts/Transform.sh
     ./Scripts/Bash_Scripts/Load.sh
     ```

2. **Executing SQL Queries**
   - Connect to the PostgreSQL database using pgAdmin or another client.
   - Run the SQL scripts located in `Scripts/SQL_Scripts/` in the Query Tool.

## ETL Pipeline Diagram
[ETL Pipeline Diagram](CDE_Assignment/CoreDataEngineers_ETL_Project/Diagrams/ETL_Pipeline.png)
