******************************************
-- Nutritional Products_Sales Breakdown --
******************************************


---------------------
-- Creating Schema --
---------------------

/* Creating schema for project */
CREATE SCHEMA IF NOT EXISTS supplement_sales
USE supplement_sales

DROP TABLE IF EXISTS supp_weekly_sales

/* Creating the dataset table with the optimized data types */
CREATE TABLE supplement_sales.supp_weekly_sales(
	week_date DATE,
  product_name VARCHAR(30),
  category  VARCHAR(20),
  units_sold SMALLINT UNSIGNED,
  price TINYINT UNSIGNED,
  total_revenue SMALLINT UNSIGNED,
  discount FLOAT(4, 2) UNSIGNED,
  units_returned TINYINT UNSIGNED,
  location ENUM('Canada', 'UK', 'USA'),
  platform ENUM('Amazon', 'iHerb', 'Walmart')
  )

--------------------
-- Importing Data --
--------------------

/* Right click on supp_weekly_sales table in the supplement_sales schema and select Table Data Import Wizard to import data*/


-------------------
-- Sampling Data --
-------------------

/* Checking sample of data format */
SELECT *
FROM supp_weekly_sales
LIMIT 10

/* Counting total rows */
SELECT COUNT(*)
FROM supp_weekly_sales

/* Checking for duplicates */
SELECT *, COUNT(*) AS duplicate_count
FROM supp_weekly_sales
GROUP BY week_date, product_name, category, units_sold, price, total_revenue, discount, units_returned, location, platform
HAVING COUNT(*) > 1

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
