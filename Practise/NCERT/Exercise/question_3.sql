-- 3. Consider the following MOVIE table and write the SQL
-- queries based on it.
-- MovieID  MovieName
-- BusinessCost
-- 001
--      Category   ReleaseDate   ProductionCost
--  Hindi_Movie     Musical     2018-04-23
-- 002
-- 003
-- 004
-- 005
-- 006
--  Tamil_Movie     Action
--  English_Movie   Horror
--      2016-05-17
--      2017-08-06
--  Bengali_Movie   Adventure   2017-01-04
--  Telugu_Movie    Action
--  Punjabi_Movie   Comedy
--         -
--         -

-- Creating a table named movie
CREATE TABLE MOVIE_3 (
    MovieId INT PRIMARY KEY,
    MovieName VARCHAR(50),
    Category VARCHAR(20),
    ReleaseDate DATE,
    ProductionCost BIGINT(100),
    BusinessCost BIGINT(100)
)

INSERT INTO
    movie_3
VALUES (
        005,
        "Telugu_Movie",
        "Action",
        NULL,
        100000,
        NULL
    ),
    (
        006,
        "Punjabi_Movie",
        "Comedy",
        NULL,
        30500,
        NULL
    )

-- a) Display all the information from the Movie table.
SELECT * FROM movie_3

/* b) List business done by the movies showing only 
MovieID, MovieName and Total_Earning. Total_
Earning to be calculated as the sum of ProductionCost 
and BusinessCost.
*/
SELECT
    MovieId,
    MovieName,
    COALESCE(ProductionCost, 0) + COALESCE(BusinessCost, 0) AS Total_Earning
FROM movie_3

-- c) List the different categories of movies.
SELECT category FROM movie_3;

-- d) Find the net profit of each movie showing its
-- MovieID, MovieName and NetProfit. Net Profit is to be
-- calculated as the difference between Business Cost
-- and Production Cost.

SELECT
    MovieId,
    MovieName,
    COALESCE(BusinessCost, 0) - COALESCE(ProductionCost, 0) AS Total_Earning
FROM movie_3

-- e) List MovieID, MovieName and Cost for all movies with
-- ProductionCost greater than 10,000 and less than
-- 1,00,000.

SELECT MovieId, MovieName, COALESCE(ProductionCost, 0) + COALESCE(BusinessCost, 0) AS cost
FROM movie_3
WHERE
    `ProductionCost` > 10000
    AND 'ProductionCost' < 100000

-- f) List details of all movies which fall in the category of
-- comedy or action.
SELECT * FROM movie_3 WHERE category IN ('Horror', 'Action')

-- g) List dettails of all movies which have not been released
-- yet.

SELECT *
FROM movie_3
WHERE ReleaseDate IS NULL