# Nutritional Products Sales Breakdown

![aleksander-saks-7lQ1m08Z7eE-unsplash](https://github.com/user-attachments/assets/e7310dcc-b7f5-4885-ae89-15b8b70aecbb)

## Table of Contents

- [Project Introduction](#project-introduction)
  - [Code in SQL](#code-in-sql)
  - [Code in Jupyter Notebook](#code-in-jupyter-notebook)
  - [Tableau Dashboard](#tableau-dashboard)
  - [Project Dataset](#project-dataset)
- [Objective](#objective)
- [Tools and Technologies Used](#tools-and-technologies-used)
- [Executive Summary](#executive-summary)

## Project Introduction

This project analyzes global nutritional supplement sales data across multiple products, countries, and online platforms to uncover trends in revenue, customer demand, and product performance. The analysis follows a complete end to end data workflow using SQL for data cleaning, Python for data manipulation and exploratory analysis, and Tableau for interactive dashboard creation to support data driven decision making.

### Code in SQL

Link: [Nutritional Products Sales Breakdown Data Storage, Cleaning, and Transformation in SQL](https://github.com/jasondo-da/Nutritional_Products_Sales_Breakdown/blob/main/queries.sql)


### Code in Jupyter Notebook

Link: [Nutritional Products Sales Breakdown Jupyter Notebook](https://github.com/jasondo-da/Nutritional_Products_Sales_Breakdown/blob/main/supplement_sales_analysis.ipynb)

### Tableau Dashboard

Link: [Tableau Dashboard](https://public.tableau.com/views/nutritional_sales_dashboard/dashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


### Project Dataset

Link: [Original Kaggle Dataset](https://www.kaggle.com/datasets/zahidmughal2343/supplement-sales-data)


## Objective

• Imported, cleaned, and transformed the data in MySQL to prepare it for analysis in Python, including handling missing values, removing duplicates, and converting values to snakecase format

• Explored the dataset using Python to further understand data structure, distributions, and relationships, then manipulated the data through filtering, grouping, and aggregations

• Analyze sales performance across products, countries, and online platforms

• Identify top performing products and supplement categories while analyzing revenue and unit return trends over time

• Create a Tableau dashboard for business and exploratory analysis


## Tools and Technologies Used

| Tools and Technologies | Documentation |
| :--------- | :--------- |
| Languages | ![SQL](https://img.shields.io/badge/SQL-%236495ed?style=for-the-badge) [![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)](https://www.python.org/) |
| Database Management | [![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/) |
| Libraries | [![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/) [![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)](https://matplotlib.org/) [![seaborn](https://img.shields.io/badge/Seaborn-%09%23191970?style=for-the-badge)](https://seaborn.pydata.org/) [![MySQL Connector](https://img.shields.io/badge/mysql%20connector-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)|
| Data Visualization | [![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)](https://www.tableau.com/) [![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)](https://matplotlib.org/) [![seaborn](https://img.shields.io/badge/Seaborn-%09%23191970?style=for-the-badge)](https://seaborn.pydata.org/)
| Tools | ![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white) ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white) |


## Executive Summary

This analysis evaluates online sales performance and demand patterns for nutritional supplements across Canada, the United Kingdom, and the United States from 2020 to 2024.

**Key findings include:**
- Seasonality strongly influences supplement sales, with demand peaking during seasonal transitions across all regions  
- Canada is the most stable and highest-performing market, showing consistent growth throughout the period  
- The United Kingdom maintains steady intra-year demand but exhibits significant year-to-year volatility, including a sharp decline in 2024  
- The United States records the lowest total sales volume but demonstrates consistent long-term growth, indicating strong future potential  
- Sales are concentrated in vitamins, minerals, protein, and performance supplements, with return patterns closely mirroring sales volume rather than indicating category-specific issues
- iHerb is the dominant purchase platform, outperforming Amazon and Walmart, likely due to its specialized focus on nutritional and wellness products versus general-purpose retailers
