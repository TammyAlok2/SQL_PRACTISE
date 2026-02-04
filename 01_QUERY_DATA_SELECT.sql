/*----------------------------------------------------------------------------------
SQL SELECT QUERY
-----------------------------------------------------------------------------------
This guide covers various SELECT query techniques used for retrieving filtering,
sorting , and aggregating data efficently .

Table of Contents:
1. SELECT ALL COLUMNS
2. SELECT SPECIFIC COLUMNS
3. WHERE CLAUSE
4. ORDER BY
5. GROUP BY 
6. HAVING 
7. DISTINCT 
8. TOP
9. Combining Queries
10. COOL STUFF - Additional SQL Features 



*/
----------------------------------------------------------------------------------

-- This is a single-line comment.

/* This
is
a multiple-line
comment
*/

/* ==============================================================================
1) SELECT ALL COLUMNS
=============================================================================== */

SELECT * FROM students;

/* ==============================================================================
2)  SELECT FEW COLUMNS
=============================================================================== */

SELECT name, country, score FROM students;

* ==============================================================================
  3) WHERE
=============================================================================== */

-- Retrieve customers with a score not equal to 0
SELECT * FROM students WHERE score != 0;

-- Retrieve customers from germany
SELECT * FROM students WHERE country = 'Germany'

-- Retrieve the name and country of customers from Germany
SELECT name, country FROM students WHERE country = 'germany'

/* ==============================================================================
4) ORDER BY : Used for sorting by default it is ASC 
=============================================================================== */

-- Retrieve all customers and sort the results by the hishest score first.
SELECT * FROM students ORDER BY score DESC;

-- Retrieve all customers and sort the results by the lowest score first
SELECT *
FROM students
ORDER BY score;

-- Retrieve all customers and sort the result by the country 
SELECT *
FROM students
ORDER BY country ASC;

 /* Retrieve all customers and sort the results by the country and 
 then ny the higest score */
SELECT *
FROM students
ORDER BY COUNTRY ASC , score DESC;
# here column_order is very crucial  

/* Retrieve the name, country , and score of customers whose score 
is not equal to 0 
and sort the results by the highest score first
*/ 
SELECT 
    name ,
    country,
    score
FROM students
WHERE score !=0
ORDER BY score DESC

/* ==============================================================================
 5)  GROUP BY : Aggregates a column by another column , combines rows with same value 
=============================================================================== */
-- the result of group by determined by the unique values of the grouped columns 

-- Find the total score for each country
SELECT
  country,
  SUM (score)
FROM students
GROUP BY country

/* This will not work because 'first_name' is neither part of the GROUP BY 
   nor wrapped in an aggregate function. SQL doesn't know how to handle this column. */
SELECT 
    country,
    name,
    SUM(score) AS total_score
FROM students
GROUP BY country

-- Find the total score and total number of customers for each country 
SELECT 
  country,
  SUM(score) AS total_score ,
  COUNT(id) AS total_customers
FROM students
GROUP BY country  


/* ==============================================================================
 6)  HAVING : filter data after aggregation 
             - can be used only with group by 
             - sytax : HAVING condition 
=============================================================================== */

/* find the average score for each country 
   and return only those countries with an avg score greater than 430 
*/

SELECT 
  country,
  AVG(score) AS Average_SCORE
FROM students
GROUP BY country
HAVING AVG(score) > 430


/* find the average score for each country 
   considering only customers with a score not equal to 0 
   and return only those countries with an average score greater than 430
*/

SELECT
  country,
  AVG(score) AS Average_Score
FROM students
WHERE score !=0 
GROUP BY country
HAVING AVG(score) > 430  

/* ==============================================================================
   DISTINCT
=============================================================================== */

-- Return Unique list of all countries 
SELECT DISTINCT country 
FROM students

/* ==============================================================================
   TOP : Restrict the no of rows returned 
=============================================================================== */

-- Retrieve only 3 customers 
SELECT TOP 3 *
FROM students

-- Retrieve the top 3 customers with highest score 
SELECT TOP 3 *
FROM students 
ORDER BY score DESC


-- Retrieve the lowest 2 customers 
SELECT TOP 2 *
FROM students
ORDER BY score ASC





/* ==============================================================================
   All Together
=============================================================================== */

/* 
Calculate the average score for each country 
considering only customers with a score not equal to 0 
and return only those countries with an average score greater than 430 
and sort the results by the highest average score first.

*/

SELECT 
  country,
  AVG(score) AS AVG_SCORE
FROM students
WHERE score !=0
GROUP BY country
HAVING AVG(score) > 430 
ORDER BY AVG(score) DESC  



/* ============================================================================== 
   COOL STUFF - Additional SQL Features
=============================================================================== */

-- Execute multiple queries at once
SELECT * FROM customers;
SELECT * FROM orders;

/* Selecting Static Data */
-- Select a static or constant value without accessing any table
SELECT 123 AS static_number;

SELECT 'Hello' AS static_string;

-- Assign a constant value to a column in a query
SELECT
    id,
    name,
    'New Customer' AS customer_type
FROM students;