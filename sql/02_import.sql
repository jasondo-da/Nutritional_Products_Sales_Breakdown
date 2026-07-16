/* ------------------------------------------------------------------
   File: 02_import.sql
   Project: Nutritional Products Sales Breakdown
   Purpose: Importing raw excel data into table
   SQL Dialect: MySQL
   Notes: File paths are local and may vary by environment
   ------------------------------------------------------------------ */


/* ------------------------------
   Table: Supplement Weekly Sales
   ------------------------------ */

/* Importing table data from excel file */
LOAD DATA LOCAL INFILE 'C:/Users/jason/Desktop/DA Projects/Pipeline/supp_sales/Supplement_Sales_Weekly_Expanded_Raw_Copy.csv'
INTO TABLE supp_weekly_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
