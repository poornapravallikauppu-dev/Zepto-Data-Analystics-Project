CREATE DATABASE zepto_project;
USE zepto_project;
CREATE TABLE zepto_sales (
    category VARCHAR(100),
    name VARCHAR(255),
    mrp DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    available_quantity INT,
    discounted_selling_price DECIMAL(10,2),
    weight_in_gm INT,
    outofstock VARCHAR(10),
    quantity INT,
    revenue DECIMAL(15,2)
);
-- Data check 
SELECT * FROM zepto_sales Limit 10;
UPDATE zepto_sales SET revenue = discounted_selling_price * quantity;
SET SQL_SAFE_Updates = 0;
-- kpi queries
-- Total Revenue
SELECT SUM(revenue) As total_revenue From zepto_sales;
-- Total Quantity sold
SELECT SUM(quantity) As total_quantity From zepto_sales;
-- Average Discount
SELECT AVG(discount_percent) AS avg_discount From zepto_sales;
-- Out of stock
SELECT Count(*) FROM zepto_sales Where outofstock = 1;
-- Analysis Queries like excel,python
-- Analysis 1
SELECT Category, SUM(revenue) As total_revenue From zepto_sales Group by category order by total_revenue Desc;
-- Analysis 2 TOP selling products
SELECT name, SUM(quantity) As total_sold From zepto_sales Group by name order by total_sold desc limit 10;
-- Analysis 3 Average Discount by category
SELECT Category, AVG(discount_percent) As avg_discount From zepto_sales Group by category;
-- Analysis 4 Stock Availability
SELECT Category, SUM(available_quantity) As stock from zepto_sales group by category;
-- Analysis 5 Out of stock
Select category, COUNT(*) As out_stock_count from zepto_sales where outofstock = 1 group by category;
-- Highest revenue category
SELECT category from zepto_sales group by category order by sum(revenue) desc limit 1;
-- Top 5 expensive products
SELECT name, mrp from zepto_sales order by mrp desc limit 5;
-- Products with highest discount
select name,discount_percent from zepto_sales order by discount_percent desc limit 10;
