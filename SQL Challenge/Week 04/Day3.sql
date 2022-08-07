-- Source: https://www.w3schools.com/sql/exercise.asp?filename=exercise_update1

-- Update

-- 01: Update the City column of all records in the Customers table.

UPDATE Customers
SET City = 'Oslo';

-- 02: Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".

UPDATE Customers
SET City = 'Oslo'
WHERE Country = 'Norway';

-- 03: Update the City value and the Country value.

UPDATE Customers
SET City = 'Oslo',
    Country = 'Norway'
WHERE CustomerID = 32;

--**********************************************************************************************************************

--Delete

-- 01: Delete all the records from the Customers table where the Country value is 'Norway'.

DELETE FROM Customers
WHERE Country = 'Norway';

-- 02: Delete all the records from the Customers table.

DELETE FROM Customers;
