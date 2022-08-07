-- Source: https://www.w3schools.com/sql/exercise.asp?filename=exercise_orderby1

-- Order By

-- 01: Select all records from the Customers table, sort the result alphabetically by the column City.

SELECT * 
FROM Customers
ORDER BY City;

-- 02: Select all records from the Customers table, sort the result reversed alphabetically by the column City.

SELECT * 
FROM Customers
ORDER BY City DESC;

-- 03: Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.

SELECT * 
FROM Customers
ORDER BY Country, City;
