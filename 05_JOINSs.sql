/* ==============================================================================
SQL Joins 
-------------------------------------------------------------------------------
This document provides an overview of SQL joins, which allow combining data
from multiple tables to retrieve meaningful insights.

Table of Contents:
1. Basic Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
2. Advanced Joins
- LEFT ANTI JOIN
- RIGHT ANTI JOIN
- ALTERNATIVE INNER JOIN
- FULL ANTI JOIN
- CROSS JOIN
3. Multiple Table Joins (4 Tables)
=================================================================================
*/

/* ============================================================================== 
BASIC JOINS 
=============================================================================== */

-- No Join
/* Retrieve all data from customers and orders as separate results */

SELECT * FROM customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    consumers_id INT,
    order_date DATE,
    sales INT,
    FOREIGN KEY (consumers_id) REFERENCES consumers (consumers_id)
);

CREATE TABLE consumers (
    consumers_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    country VARCHAR(30),
    mob_no INT(100)
)

SELECT * FROM orders;

SELECT * FROM consumers;

INSERT INTO orders (
    
)