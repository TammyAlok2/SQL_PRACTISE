/*


6) A shop called Wonderful Garments who sells school 
uniforms maintains a database SCHOOLUNIFORM as 
shown below. It consisted of two relations - UNIFORM 
and COST. They made UniformCode as the primary key 
for UNIFORM relations. Further, they used UniformCode 
and Size to be composite keys for COST relation. By 
analysing the database schema and database state, 
specify SQL queries to rectify the following anomalies.



*/
CREATE TABLE SCHOOLUNIFORM (
    UniformCode INT PRIMARY KEY,
    Name VARCHAR(100)
)

CREATE TABLE COST (
    id INT PRIMARY KEY,
    UniformId INT,
    cost INT(100),
    size VARCHAR(30),
    FOREIGN KEY (UniformId) REFERENCES SCHOOLUNIFORM(UniformCode)
)
-- a) M/S Wonderful Garments also keeps handkerchiefs
-- of red colour, medium size of Rs. 100 each.

INSERT INTO schooluniform(`UniformCode`,Name) VALUES(01,"Red Color Handerchief")

INSERT INTO cost (id,`UniformId`,cost,size) VALUES (101,01,100,'m')

-- b) INSERT INTO COST (UCode, Size, Price) values (7,
-- 'M',100);
-- When the above query is used to insert data,
-- the values for the handkerchief without entering its
-- details in the UNIFORM relation is entered. Make
-- a provision so that the data can be entered in the
-- COST table only if it is already there in the UNIFORM
-- table.
-- c) Further, they should be able to assign a new UCode to
-- an item only if it has a valid UName. Write a query to
-- add appropriate constraints to the SCHOOLUNIFORM
-- database.
-- d) Add the constraint so that the price of an item is
-- always greater than zero.