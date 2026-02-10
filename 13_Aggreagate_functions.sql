/* ============================================================================== 
SQL Aggregate Functions
-------------------------------------------------------------------------------
This document provides an overview of SQL aggregate functions, which allow 
performing calculations on multiple rows of data to generate summary results.

Table of Contents:
1. Basic Aggregate Functions
- COUNT
- SUM
- AVG
- MAX
- MIN
2. Grouped Aggregations
- GROUP BY
=================================================================================
*/

/* ============================================================================== 
BASIC AGGREGATE FUNCTIONS
=============================================================================== */

-- find the total number of consumers
SELECT COUNT(*) AS total_consumers FROM consumers




-- find total sales of all orders
SELECT SUM(sales) AS Total_Sales
FROM book_orders;

-- find the average of all orders 
SELECT AVG(sales) AS Avg_Sales
FROM book_orders

-- find the lowest score among orders
SELECT MIN(sales) AS min_score
FROM book_orders

-- find the highest score among orders 
SELECT MAX(sales) AS max_score
from book_orders

/* ============================================================================== 
   GROUPED AGGREGATIONS - GROUP BY
=============================================================================== */

-- find the number of orders, total sales ,average sales , and lowest sales per customer 

SELECT 
  `OrderId`,
  COUNT(*) as total_book_orders,
  SUM(sales) AS total_sales,
  AVG(sales) as avg_sales,
  MAX(sales) as highest_sales,
  MIN(sales) AS lowest_sales
FROM book_orders
GROUP BY `OrderId`  