# Nutritional Products Sales Breakdown

![aleksander-saks-7lQ1m08Z7eE-unsplash](https://github.com/user-attachments/assets/e7310dcc-b7f5-4885-ae89-15b8b70aecbb)

## Table of Contents

- [Project Introduction](#project-introduction)
- [Objective](#objective)
- [Executive Summary](#executive-summary)
- [Key Findings](#key-findings)
- [Business Impact](#business-impact)
- [Data & Analysis Overview](#data--analysis-overview)
  - [Project Dataset](#project-dataset)
  - [SQL Queries](#sql-queries)
  - [Jupyter Notebook Code](#jupyter-notebook-code)
  - [Tableau Dashboard](#tableau-dashboard)
- [Tools and Technologies Used](#tools-and-technologies-used)

## Project Introduction

This project analyzes global nutritional supplement sales across multiple products, countries, and online platforms to uncover trends in revenue, customer demand, and product performance. The analysis follows a full end-to-end data workflow, leveraging SQL for data cleaning, Python for data manipulation and exploratory analysis, and Tableau to create interactive dashboards for reporting and data-driven decision making.


## Objective

- Analyze sales performance across products, countries, and online platforms

- Identify top-performing supplement categories and revenue drivers

- Evaluate seasonal demand patterns and regional market behavior

- Develop an interactive Tableau dashboard to support business decision-making

## Executive Summary

This analysis evaluates online sales performance and demand patterns for nutritional supplements across Canada, the United Kingdom, and the United States from 2020 to 2024. The objective was to identify high-performing products, key drivers of revenue growth, and opportunities to improve sales performance across regions.

Results show that supplement demand is strongly influenced by seasonality, with sales peaking during seasonal transitions in all three markets. While the United States generated lower sales than Canada and the United Kingdom over the period analyzed, it demonstrated consistent year-over-year growth, indicating strong future potential given its large consumer base and high disposable income for health products.

Sales were heavily concentrated in vitamins and minerals (approximately $4 million in aggregate sales each), followed by protein and performance supplements (approximately $2.7 million each). These categories represent foundational, entry-level supplements and offer the greatest opportunity for scalable marketing to a broad audience.

## Key Findings

- Seasonality strongly influences supplement sales, with demand peaking during seasonal transitions across all regions

- Canada is the most stable and highest-performing market, showing consistent performance throughout the period, ranging from $1.4 to $1.5 million in annual sales

- The United Kingdom maintains steady intra-year demand but exhibits significant year-to-year volatility, including a sharp decline in 2024 to $1.3 million from $1.5 million the prior year

- The United States records the lowest total sales, starting in 2020 at approximately $1.3 million in annual sales, but demonstrates consistent long-term growth to $1.5 million in 2024, indicating strong future potential

- Sales are concentrated in vitamins and minerals (approximately $4 million in aggregate sales each), followed by protein and performance supplements (approximately $2.7 million each), with return patterns closely mirroring sales volume rather than indicating category-specific issues

- iHerb is the dominant purchase platform, generating $7.48 million in sales from 2020 to 2024, outperforming Amazon and Walmart, likely due to its specialized focus on nutritional and wellness products compared to general-purpose retailers

## Business Impact

- Marketing strategies should be tailored to individual locations, as geographic differences strongly influence gym participation and demand for health products

- The United States should be prioritized as the primary target market, as it represents the largest total addressable market, shows consistent growth, and has higher average disposable income for health-related spending

- Vitamins, minerals, protein, and performance supplements should be the primary categories promoted, given their broad relevance to pre- and post-workout nutrition and accessibility to most customers.

- Other supplement categories should be positioned through the iHerb platform, as users on this platform tend to be further along in their fitness journeys and seek more specialized products aligned with specific health goals

## Data & Analysis Overview

### Project Dataset

| Attribute | Description |
| :-------- | :-------- |
| Dataset | Supplement Sales Data | 
| Data Source | [Original Kaggle Dataset](https://www.kaggle.com/datasets/zahidmughal2343/supplement-sales-data) |
| Size | 4,384 weekly sales records | 
| Key entities | Product Name, Category, Total Revenue, Total Returns, Sales Location, Sales Platform |
| Notes | Each record is aggregated sales data for each product per location and platform |

### SQL Queries

Link: [Nutritional Products Sales Breakdown Data Storage, Cleaning, and Transformation in SQL](https://github.com/jasondo-da/Nutritional_Products_Sales_Breakdown/blob/main/queries.sql)

### Jupyter Notebook Code

Link: [Nutritional Products Sales Breakdown Jupyter Notebook](https://github.com/jasondo-da/Nutritional_Products_Sales_Breakdown/blob/main/supplement_sales_analysis.ipynb)

### Tableau Dashboard

Link: [Tableau Dashboard](https://public.tableau.com/views/nutritional_sales_dashboard/dashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Tools and Technologies Used

| Tools and Technologies | Documentation |
| :--------- | :--------- |
| Languages | ![SQL](https://img.shields.io/badge/SQL-%236495ed?style=for-the-badge) [![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)](https://www.python.org/) |
| Database Management | [![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/) |
| Libraries | [![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/) [![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)](https://matplotlib.org/) [![seaborn](https://img.shields.io/badge/Seaborn-%09%23191970?style=for-the-badge)](https://seaborn.pydata.org/) [![MySQL Connector](https://img.shields.io/badge/mysql%20connector-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)|
| Data Visualization | [![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=Tableau&logoColor=white)](https://www.tableau.com/) [![Matplotlib](https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black)](https://matplotlib.org/) [![seaborn](https://img.shields.io/badge/Seaborn-%09%23191970?style=for-the-badge)](https://seaborn.pydata.org/)
| Tools | ![Jupyter Notebook](https://img.shields.io/badge/jupyter-%23FA0F00.svg?style=for-the-badge&logo=jupyter&logoColor=white) ![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white) |
