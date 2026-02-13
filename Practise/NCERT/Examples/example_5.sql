-- Example 9.5 The following query selects records of all the 
-- employees except Aaliya.

SELECT * FROM example_student
WHERE NOT SName = 'Aliya'