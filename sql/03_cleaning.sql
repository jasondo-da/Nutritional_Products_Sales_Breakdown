/* ------------------------------------------------------------------
   File: 03_cleaning.sql
   Project: Nutritional Products Sales Breakdown
   Purpose: Sampling, cleaning, and preparing data for analysis
   SQL Dialect: MySQL
   ------------------------------------------------------------------ */


/* -------------
   Sampling Data
   ------------- */

/* Checking table data types*/
DESCRIBE supp_weekly_sales

/* Checking sample of data format */
SELECT *
FROM supp_weekly_sales
LIMIT 10

/* Counting total rows */
SELECT COUNT(*)
FROM supp_weekly_sales
-- 4384 rows counted


/* ------------------------------
   Checking & Removing Duplicates
   ------------------------------ */

/* Checking for duplicates */
WITH dup_supp_weekly_sales AS
(SELECT *,
	ROW_NUMBER() OVER(
      PARTITION BY week_date, product_name, category, units_sold, price, total_revenue, discount, units_returned, location, platform
      ) AS row_num
FROM supp_weekly_sales)

SELECT *
FROM dup_supp_weekly_sales
WHERE row_num > 1
-- No duplicates found


/* ------------------------------------------------
   Checking & Removing Null and Empty String Values
   ------------------------------------------------ */

/* Checking for null values */
SELECT *
FROM supp_weekly_sales
WHERE week_date IS NULL OR TRIM(week_date) = ''
	OR product_name IS NULL OR TRIM(product_name) = ''
    OR category IS NULL OR TRIM(category) = ''
    OR units_sold IS NULL OR TRIM(units_sold) = ''
    OR price IS NULL OR TRIM(price) = ''
    OR total_revenue IS NULL OR TRIM(total_revenue) = ''
    OR discount IS NULL OR TRIM(discount) = ''
    OR units_returned IS NULL OR TRIM(units_returned) = ''
    OR location IS NULL OR TRIM(location) = ''
    OR platform IS NULL OR TRIM(platform) = ''
-- No NULL or empty string values found


/* -------------------------------
   Standardizing & Optimizing Data
   ------------------------------- */

   /* --------------------------
      Inconsistent String Values
      -------------------------- */

/* Checking for inconsistent string values */
SELECT DISTINCT(product_name)
FROM supp_weekly_sales
ORDER BY product_name
-- No inconsistent values found but will need to be converted to snakecase format

/* Checking for inconsistent string values */
SELECT DISTINCT(category)
FROM supp_weekly_sales
ORDER BY category
-- No inconsistent values found but will need to be converted to snakecase format

/* Checking for inconsistent string values */
SELECT DISTINCT(location)
FROM supp_weekly_sales
ORDER BY location
-- No inconsistent values found

/* Checking for inconsistent string values */
SELECT DISTINCT(platform)
FROM supp_weekly_sales
ORDER BY platform
-- No inconsistent values found

/* Creating a unique identifier primary key for each entry to use to later clean data*/
ALTER TABLE supp_weekly_sales
ADD COLUMN id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY

/* Converting product_name column into snakecase format */
UPDATE supp_weekly_sales
SET product_name = LOWER(
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(TRIM(product_name), '[^A-Za-z0-9]+', '_'), /* Replacing all non-alphanumeric characters with the underscore characters */
        '_+', '_'), /* Replacing multiple underscore characters with a single one */
    '^_|_$', '') /* Removing all leading or trailing underscore characters */
)
WHERE id > 0

/* Converting category column into snakecase format */
UPDATE supp_weekly_sales
SET category = LOWER(
    REGEXP_REPLACE(
        REGEXP_REPLACE(
            REGEXP_REPLACE(TRIM(category), '[^A-Za-z0-9]+', '_'), /* Replacing all non-alphanumeric characters with the underscore characters */
        '_+', '_'), /* Replacing multiple underscore characters with a single one */
    '^_|_$', '') /* Removing all leading or trailing underscore characters */
)
WHERE id > 0

   /* -----------------------
      Optimizing Table Values
      ----------------------- */

/* Looking for maximum character length to optimize table */
SELECT 
   MAX(LENGTH(product_name)) AS max_product_name,
	MAX(LENGTH(category)) AS max_category
FROM supp_weekly_sales
-- The longest product name used 18 characters and the longest category name used 11 characters
-- By reducing the variable character size can reduce data usage in the future

/* Optimizing product_name varchar size */
ALTER TABLE supp_weekly_sales
MODIFY product_name VARCHAR(18)

/* Optimizing category varchar size */
ALTER TABLE supp_weekly_sales
MODIFY category VARCHAR(11)

/* Looking for maximum numeric value to optimize table */
SELECT 
   MAX(units_sold),
    MIN(units_sold),
	MAX(price),
    MIN(price),
	MAX(total_revenue),
    MIN(total_revenue),
	MAX(discount),
    MIN(discount),
	MAX(units_returned),
    MIN(units_returned)
FROM supp_weekly_sales
-- All integer data types are optimized for the table
-- Note: As sales increase in the future some of these integer data types may need to be adjusted up accordingly


/* -------------------
   Saving Cleaned Data
   ------------------- */

/* Saving cleaned table for analysis in Python */
CREATE TABLE supp_weekly_sales_cleaned AS
SELECT
   week_date,
   product_name,
   category,
   units_sold,
   price,
   total_revenue,
   discount,
   units_returned,
   location,
   platform
FROM supp_weekly_sales
