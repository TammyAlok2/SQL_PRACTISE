-- 7. Consider the following table named “Product”, showing 
-- details of products being sold in a grocery shop.

-- Write SQL queries for the following:
-- a) Create the table Product with appropriate data types 
-- and constraints. 

CREATE TABLE Products(
    PCode INT PRIMARY KEY,
    PName VARCHAR(50),
    UPrice INT(100),
    Manufacturer VARCHAR(50)
)

INSERT INTO products VALUES(01,"Washing Powder",120,"Surf"),
                            (02,"Toothpaste",54,"Colgate"),
                            (03,"Soap",25,"Lux"),
                            (04,"Toothpaste",65,"Pesodent"),
                            (05,"Soap",38,"Dove"),
                            (06,"Shampoo",245,"Dove")

SELECT * FROM products;                           

-- b) Identify the primary key in Product.
-- PCode is Primary key 

-- c) List the Product Code, Product name and price in 
-- descending order of their product name. If PName is 
-- the same, then display the data in ascending order 
-- of price.
SELECT
   PCODE,
   PName,
   UPrice
FROM products
ORDER BY PNAME,UPrice   

-- d) Add a new column Discount to the table Product.
ALTER TABLE products
ADD COLUMN Discount BIGINT(50)

-- e) Calculate the value of the discount in the table Product 
-- as 10 per cent of the UPrice for all those products 
-- where the UPrice is more than 100, otherwise the 
-- discount will be 0.

UPDATE products
SET Discount =
      CASE
           WHEN UPrice > 100 THEN `UPrice` * 0.10 
           ELSE 0
       END;     




-- f) Increase the price by 12 per cent for all the products 
-- manufactured by Dove.
UPDATE products
SET `UPrice` = Uprice + Uprice * 0.12
WHERE `Manufacturer` = "Dove"


-- g) Display the total number of products manufactured 
-- by each manufacturer.

SELECT
   COUNT(PCODE) AS Total_Products,
   `Manufacturer`
FROM products
GROUP BY `Manufacturer`   



-- Write the output(s) produced by executing the 
-- following queries on the basis of the information 
-- given above in the table Product:
-- h) SELECT PName, avg(UPrice) FROM Product GROUP 
-- BY Pname;
SELECT 
  PName, AVG(UPrice)
FROM products
GROUP BY Pname  


-- i) SELECT DISTINCT Manufacturer FROM Product;
SELECT DISTINCT Manufacturer FROM products;

-- j) SELECT COUNT (DISTINCT PName) FROM Product;
SELECT COUNT (DISTINCT PName) FROM products;

-- k) SELECT PName, MAX(UPrice), MIN(UPrice) FROM 
-- Product GROUP BY PName

SELECT
 PName,
 MAX(UPrice),
 MIN(UPrice)
FROM products
GROUP BY `PName` 