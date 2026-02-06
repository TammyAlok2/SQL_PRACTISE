/* ============================================================================== 
   SQL Filtering Data
-------------------------------------------------------------------------------
   This document provides an overview of SQL filtering techniques using WHERE 
   and various operators for precise data retrieval.

   Table of Contents:
     1. Comparison Operators
        - =, <>, >, >=, <, <=
     2. Logical Operators
        - AND, OR, NOT
     3. Range Filtering
        - BETWEEN
     4. Set Filtering
        - IN
     5. Pattern Matching
        - LIKE
=================================================================================
*/

/* ============================================================================== 
   COMPARISON OPERATORS
=============================================================================== */

-- Retrieve all customers who are from Germany 
SELECT * FROM customers
WHERE country = "Germany"

-- Retrieve all customers who are not from Germany 
SELECT * FROM customers
WHERE country != "Germany"

SELECT * FROM customers
WHERE country <> "Germany"

-- Retrieve all customers with a score greater than 500
SELECT * FROM customers
WHERE score > 500

-- Retreive all customers with a score of 500 and more 
SELECT * FROM customers
WHERE score >= 500

-- Retrieve all customers with a score less than 500 
SELECT * FROM customers
WHERE score <500

-- Retrieve all customers with a score of 500 or less 
SELECT * FROM customers
WHERE score <= 500


/* ============================================================================== 
   LOGICAL OPERATORS
=============================================================================== */

/* Combining conditions using AND, OR, and NOT */

-- Retrieve all customers who are from the USA and have a score greater than 500.
SELECT * FROM customers
WHERE country = 'USA' AND score > 500

-- Retrieve all customers who are either from the USA or have a score greater than 500.
SELECT * FROM customers
WHERE country = 'USA' OR score > 500

-- Retrieve all customers with a score not less than 500.
SELECT * FROM customers
WHERE score < 500

/* ============================================================================== 
   RANGE FILTERING - BETWEEN
=============================================================================== */

-- Retrieve all customers whose score falls in the range between 100 and 500.
SELECT * FROM customers
WHERE SCORE BETWEEN 50 AND 100

-- Alternative method (Equivalent to BETWEEN)
SELECT * FROM customers
WHERE SCORE >= 50 AND SCORE <=100


/* ============================================================================== 
   SET FILTERING - IN
=============================================================================== */

-- Retrieve all customers from either Germany or the USA.
SELECT * FROM customers
WHERE country in ("USA","Russia","China")

SELECT * FROM customers
WHERE country = 'USA'
OR country = 'Russia'
OR country ='China'


/* ============================================================================== 
   PATTERN MATCHING - LIKE
=============================================================================== */

-- Find all customers whose first name starts with 'M'.
SELECT * FROM customers
WHERE first_name LIKE 'v%'

-- Find all customers whose first name ends with 'n'.
SELECT * FROM customers
WHERE first_name LIKE '%h'

-- Find all customers whose first name contains 'r'.
SELECT * FROM customers
WHERE first_name LIKE '%a%'

-- Find all customers whose first name has 'r' in the third position.
SELECT * FROM customers
WHERE first_name LIKE '___a%'