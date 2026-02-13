-- Example 9.16 The following query selects names of all 
-- employees containing 'se' as a substring in name.

SELECT * FROM example_student
WHERE `SName` LIKE '%al%'