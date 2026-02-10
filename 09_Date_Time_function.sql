/* ==============================================================================
SQL Date & Time Functions
-------------------------------------------------------------------------------
This script demonstrates various date and time functions in SQL.
It covers functions such as GETDATE, DATETRUNC, DATENAME, DATEPART,
YEAR, MONTH, DAY, EOMONTH, FORMAT, CONVERT, CAST, DATEADD, DATEDIFF,
and ISDATE.

Table of Contents:
1. GETDATE | Date Values
2. Date Part Extractions (DATETRUNC, DATENAME, DATEPART, YEAR, MONTH, DAY)
3. DATETRUNC
4. EOMONTH
5. Date Parts
6. FORMAT
7. CONVERT
8. CAST
9. DATEADD / DATEDIFF
10. ISDATE
===============================================================================
*/

CREATE TABLE Book_Orders (
    OrderId INT PRIMARY KEY,
    CreationTime DATETIME,
    Order_Name VARCHAR(50),
    Order_by VARCHAR(50),
    SaleTime DATE
)

INSERT INTO
    Book_Orders (
        OrderId,
        CreationTime,
        Order_Name,
        Order_by,
        SaleTime
    )
VALUES (
        3,
        "2026-02-12 12:34:56.00000",
        "Arihant CS 13",
        "Abhishek Singh",
        "2026-03-23"
    ),
    (
        2,
        "2026-02-01 12:32:45.00000",
        "Arihant CS 11 ",
        "Abhinay kumar",
        "2026-04-25"
    )

SELECT *
FROM
    Book_Orders * = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = GETDATE () | DATE
VALUES
    = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = * /

-- Getting Current date
SELECT NOW()

-- Getting current date only
SELECT CURDATE()

-- Getting current time
SELECT CURTIME()

-- Getting current year
SELECT YEAR(CURDATE())

-- Gettting current month and month name
SELECT MONTH(CURDATE()) SELECT MONTHNAME(CURDATE())

-- Getting current day and day name
SELECT DAY(CURDATE()) SELECT DAYNAME(CURDATE())

-- Getting current week and week name , weeek of year
SELECT WEEK(CURDATE())

SELECT WEEKDAY(CURDATE())

SELECT WEEKOFYEAR(CURDATE())

/* TASK 1:
Display OrderID, CreationTime, a hard-coded date, and the current system date.
*/

SELECT
    OrderId,
    CreationTime,
    '2025-05-20' AS HardCoded,
    NOW() AS TODAY
FROM Book_Orders

/* ==============================================================================
DATE PART EXTRACTIONS
(DATETRUNC, DATENAME, DATEPART, YEAR, MONTH, DAY)
===============================================================================*/

/* TASK 2:
Extract various parts of CreationTime using DATETRUNC, DATENAME, DATEPART,
YEAR, MONTH, and DAY.
*/

SELECT
    OrderId,
    CreationTime,
    -- DATETRUNC EXAMPLES
    YEAR(CreationTime) AS Year_dt,
    MONTH(CreationTime) As Month_dt,
    DATE(CreationTime) AS Date_dt,
    DAY(CreationTime) AS Day_dt,
    HOUR(CreationTime) AS Hour_dt,
    MINUTE(CreationTime) AS Minute_dt,
    SECOND(CreationTime) AS Second_dt,
    -- DateName Examples
    MONTHNAME(CreationTime) AS Month_dn,
    DAYNAME(CreationTime) AS DayName_dn,
    WEEK(CreationTime) AS Week_dt,
    WEEKDAY(`CreationTime`) AS Week_dn

-- DatePart examples

FROM book_orders