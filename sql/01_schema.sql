/* ------------------------------------------------------------------
   File: 01_schema.sql
   Project: Nutritional Products Sales Breakdown
   Purpose: Create database schema and tables
   SQL Dialect: MySQL
   ------------------------------------------------------------------ */


/* --------------
   Project Schema 
   -------------- */

/* Creating schema for project */
CREATE SCHEMA IF NOT EXISTS supplement_sales


/* ------------------------------
   Table: Supplement Weekly Sales
   ------------------------------ */

/* Creating the dataset table */
CREATE TABLE supplement_sales.supp_weekly_sales(
	week_date DATE,
	product_name VARCHAR(30),
	category  VARCHAR(20),
	units_sold SMALLINT UNSIGNED,
	price TINYINT UNSIGNED,
	total_revenue SMALLINT UNSIGNED,
	discount FLOAT(4, 2) UNSIGNED,
	units_returned TINYINT UNSIGNED,
	location ENUM('canada', 'uk', 'usa'),
	platform ENUM('amazon', 'iherb', 'walmart')
  )
