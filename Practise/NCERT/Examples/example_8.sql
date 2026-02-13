-- Example 9.8 The following query selects details of all the 
-- employees except those working in department number D01 
-- or D02. 

SELECT * FROM example_student
WHERE `RollNumber` NOT IN (1,2,3)