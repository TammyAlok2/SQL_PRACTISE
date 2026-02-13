-- Example 9.11 The following query selects details of all those 
-- employees who have not been given a bonus. This implies 
-- that the bonus column will be blank. 

SELECT Sname FROM example_student
WHERE mob_no IS NULL 