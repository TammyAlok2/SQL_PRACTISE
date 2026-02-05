/* ==============================================================================
SQL Data Manipulation Language (DML)
-------------------------------------------------------------------------------
This guide covers the essential DML commands used for inserting, updating, 
and deleting data in database tables.

Table of Contents:
1. INSERT - Adding Data to Tables
2. UPDATE - Modifying Existing Data
3. DELETE - Removing Data from Tables
=================================================================================
*/

/* ============================================================================== 
INSERT
=============================================================================== */
-- 1) Manual Insert Values
-- Insert new records into the customers table

INSERT INTO
    customers (
        id,
        first_name,
        country,
        score
    )
VALUES (1, "Alok", "India", NULL),
    (2, "Anmol", "USA", NULL)

SELECT * FROM customers;

-- Incorrect column orders
INSERT INTO
    customers (
        id,
        first_name,
        country,
        score
    )
VALUES (8, "Max", "USA", NULL)

-- Incorrect data type in values
INSERT INTO
    customers (
        id,
        first_name,
        country,
        score
    )
VALUES ("Max", 0, "MAXZ", NULL)

-- Insert a new record with column values
INSERT INTO
    customers (
        id,
        first_name,
        country,
        score
    )
VALUES (5, "Vikash", "China", 80)

-- Insert a new record without specifying column names (not recommended)
INSERT INTO customers VALUES (7, "Piyush", "UK", 90)

-- Insert a record with only id and first_name (other column will be NULL or default values)

INSERT INTO
    customers (id, first_name, country)
VALUES (9, "Sweta", "Norway")

/* #2 Method: INSERT DATA USING SELECT - Moving Data From One Table to Another */

-- Copy data from the 'customers' table into 'persons'

INSERT INTO
    persons (
        id,
        person_name,
        birth_date,
        phone
    )
SELECT id, first_name, NULL, "Unknow"
FROM customers

/* ============================================================================== 
UPDATE
=============================================================================== */

-- Change the score of customer with id 6 to 0
UPDATE customers SET score = 10 WHERE id = 2

-- Updating multiple columns
-- Change the score of customer with ID 10 to 0 and update the country to 'UK'
UPDATE customers SET score = 39, country = "Russia" WHERE id = 2

-- Update all customers with a NULL score by setting their score to 0
UPDATE customers SET score = 20 WHERE score IS NULL

SELECt * FROM customers WHERE score IS NULL

/* ============================================================================== 
DELETE
=============================================================================== */

-- Select customers with an ID greater than 5 before deleting

SELECT * FROM customers WHERE id > 5

-- Delete all customers with an ID greater than
DELETE FROM customers
WHERE id > 5