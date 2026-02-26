# Zepto-Data-Analystics-Project
End-to End data analytics project analyzing retail product sales data using Excel,Python(pandas,matplotlib,numpy),and Mysql.covers data cleaning, KPI metrics,dashboard visualization,and business insights generation.
**Zepto Retail Sales Data Analysis Project**
Project Overview
This project focuses on performing end-to-end data analysis on a retail product dataset (3800+ records) using Excel, Python, and MySQL.
The objective is to clean the data, calculate key business KPIs, and generate insights to support data-driven decision-making.
**Project Objectives**
Clean and preprocess raw product data
Calculate KPIs like Total Revenue, Average Discount, and Stock Status
Analyze category-wise sales performance
Identify top-selling and out-of-stock products
Build interactive dashboards for visualization
**** Tools & Technologies Used**
Microsoft Excel – Data Cleaning, KPI Calculation, Dashboard Creation
Python (Pandas, Matplotlib) – Exploratory Data Analysis (EDA)
MySQL – Data Storage and SQL Query Analysis
**Dataset Information**
The dataset contains the following columns:
Category
Name
MRP
Discount Percentage
Available Quantity
Discounted Selling Price
Weight (gm)
Out of Stock
Quantity
Total Records: 3800+
**Key KPIs Calculated**
Total Revenue
Average Discount Percentage
Total Products
Total Available Stock
Out of Stock Count
**Analysis Performed**
Category-wise Revenue Analysis
Top 10 Products by Quantity Sold
Discount Impact on Sales
Stock Availability Analysis
Price Distribution Analysis
 **Data Cleaning Steps**
Removed duplicates
Handled missing values
Standardized column formats
Created calculated columns for revenue
**Excel Dashboard**
Pivot Tables
Bar Charts
Pie Charts
KPI Summary Cards
Slicers for interactive filtering
**Python Analysis**
Data loading using Pandas
KPI calculations
Group-by category analysis
Data visualization using Matplotlib
**MySQL Implementation**
Created database and table
Imported CSV dataset
Performed SQL queries for revenue and stock insights
Example SQL Query:
SQL
Copy code
SELECT category, SUM(quantity * discounted_selling_price) AS total_revenue
FROM products
GROUP BY category
ORDER BY total_revenue DESC;
**Key Insights**
Identified top revenue-generating categories
Found products with high discount but low sales
Analyzed stock shortages and inventory gaps
Key KPIs Calculated
**conclusion**
This project demonstrates practical skills in data cleaning, KPI calculation, dashboard development, SQL querying, and business insight generation using real-world retail data.
