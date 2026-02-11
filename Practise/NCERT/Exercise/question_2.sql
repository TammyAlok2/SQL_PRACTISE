-- 2.  Write the output produced by the following SQL 
-- statements:
-- a) SELECT POW(2,3);
SELECT
 POW(2,3)

-- b) SELECT ROUND(342.9234,-1);
SELECT
  ROUND(342.9234,-1)

-- c) SELECT LENGTH("Informatics Practices");
SELECT LENGTH("Informatics Practices");
-- d) SELECT 
-- YEAR(“1979/11/26”), 
-- MONTH(“1979/11/26”), 
-- MONTHNAME(“1979/11/26”);
SELECT 
YEAR('1979/11/26'), 
MONTH('1979/11/26'), 
MONTHNAME('1979/11/26');
-- e) SELECT 
-- LEFT("INDIA",3), 
-- Science",4), 
-- DAY(“1979/11/26”), 
-- RIGHT("Computer 
-- MID("Informatics",3,4), 
-- SUBSTR("Practices",3);

SELECT 
LEFT("INDIA",3), 

DAY('1979/11/26'), 
RIGHT("Computer Science",4), 
MID("Informatics",3,4), 
SUBSTR("Practices",3);
