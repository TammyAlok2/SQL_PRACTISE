/*
Write the name of the functions to perform the 
following operations:
i) To display the day like “Monday”, “Tuesday”, 
from the date when India got independence.
ii) To display the specified number of characters 
from a particular position of the given string.
iii) To display the name of the month in which 
you were born.
iv) To display your name in capital letters
*/

-- Ans 1) To display the day of 15/08/1947
SELECT
  DAYNAME('1947-08-15')

-- Ans 2) To display the specified no of charcter from a particular postion for the given string 
SELECT
  SUBSTRING("Information",2,10)  


-- Ans 3) To display the name of month '08/05/2005
SELECT
 MONTHNAME('2005-05-08')

-- Ans 4) To display the name in capital letter 
SELECT
 UPPER("Alok Tamrakar")
