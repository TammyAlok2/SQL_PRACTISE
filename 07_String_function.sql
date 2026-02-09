
* ============================================================================== 
   SQL String Functions
-------------------------------------------------------------------------------
   This document provides an overview of SQL string functions, which allow 
   manipulation, transformation, and extraction of text data efficiently.

   Table of Contents:
     1. Manipulations
        - CONCAT
        - LOWER
        - UPPER
	- TRIM
	- REPLACE
     2. Calculation
        - LEN
     3. Substring Extraction
        - LEFT
        - RIGHT
        - SUBSTRING
=================================================================================
*/

/* ============================================================================== 
CONCAT() - String Concatenation
=============================================================================== */

-- Concatenate first name and country into one column
SELECT
    first_name,
    country CONCAT(first_name, country) AS name_country
FROM consumers;

SELECT * FROM consumers

INSERT INTO consumers VALUES ( 5, " Aparana Soni", "India", 98989890 );

/* ============================================================================== 
LOWER() & UPPER() - Case Transformation
=============================================================================== */

-- Convert the first name to lowercase

SELECT LOWER(first_name), country FROM consumers;

-- Convert the first name to uppercase
SELECT UPPER(first_name) as first_name_upper, country FROM consumers;

/* ============================================================================== 
TRIM() - Remove White Spaces
=============================================================================== */

-- Find customers whose first name contains leading or trailing spaces

SELECT 
  first_name,
  LEN(first_name) len_name,
  LEN(TRIM(first_name)) len_first_name,
  LEN(first_name) - LEN(TRIM(first_name)) flag
FROM customers


* ============================================================================== 
   REPLACE() - Replace or Remove old value with new ONE
   SYNTAX : REPLACE('old value','remove','add')
=============================================================================== */
-- Remove dashes (-) from a phone number

SELECT '123-456-789' AS PHONE,
REPLACE ('123-456-789', '-', '/') AS clean_phone

-- Replace file extension from txt to csv
SELECT 'report.txt' as old_filename,
REPLACE ('report.txt', '.txt', '.csv') AS new_filename

/* ============================================================================== 
LEN() - String Length & Trimming
=============================================================================== */

-- Calculate the length of each constumers first name
SELECT first_name, LEN (first_name) as name_length FROM consumers

/* ============================================================================== 
LEFT() & RIGHT() - Substring Extraction 
SYNATX : lEFT('String',value)
=============================================================================== */

-- Retrieve the first two charcters of each first name
SELECT first_name, LEFT(TRIM(first_name), 2) AS first_2_chars
FROM consumers

-- Retrieve the last two charcters of each first name

SELECT first_name, RIGHT(TRIM(first_name), 2) AS last_2_chars
FROM consumers;

/* ============================================================================== 
SUBSTRING() - Extracting Substrings 
SYNTAX : ('String',start index , last index)
* NOTE : HERE STRING START WITH ONE 
=============================================================================== */

-- Retrieve a list of customers first names after removing the first charcter
SELECT 
  first_name,
  SUBSTRING(TRIM(first_name),2,LENGTH(first_name)) AS trimmed_name
FROM consumers;   

/* ==============================================================================
   NESTING FUNCTIONS
===============================================================================*/

-- Nesting
SELECT
first_name, 
UPPER(LOWER(first_name)) AS nesting
FROM customers
