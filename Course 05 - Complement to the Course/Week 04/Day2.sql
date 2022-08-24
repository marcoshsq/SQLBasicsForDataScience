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

--**********************************************************************************************************************

-- Insert

-- 01: Insert a new record in the Customers table.


INSERT INTO Customers (
  CustomerName, 
  Address, 
  City, 
  PostalCode,
  Country
  )

VALUES (
  'Hekkan Burger',
  'Gateveien 15',
  'Sandnes',
  '4306',
  'Norway'
  );
  
--**********************************************************************************************************************

-- Null

-- 01: Select all records from the Customers where the PostalCode column is empty.

SELECT * 
FROM Customers
WHERE PostalCode IS NULL;

-- 02: Select all records from the Customers where the PostalCode column is NOT empty.

SELECT * 
FROM Customers
WHERE PostalCode IS NOT NULL;
