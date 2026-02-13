-- Example 9.15 The following query selects details of all 
-- those students whose name consists of exactly 5 letters 
-- and starts with any letter but has ‘aliya’ after that.

SELECT * from example_student
WHERE `SName` LIKE '_aliya'