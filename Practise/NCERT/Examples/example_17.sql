-- Example 9.17 The following query selects names of all 
-- employees containing 'a' as the second character.

SELECT * FROM example_student
WHERE `SName` LIKE '_a%'