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

/* Right click on supp_weekly_sales table in the supplement_sales schema and select Table Data Import Wizard */
