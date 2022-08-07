-- Source: https://www.w3schools.com/sql/exercise.asp?filename=exercise_like1

-- Like

-- 01: Select all records where the value of the City column starts with the letter "a".

SELECT * 
FROM Customers
WHERE City LIKE 'a%';

-- 02: Select all records where the value of the City column ends with the letter "a".

SELECT * 
FROM Customers
WHERE City LIKE '%a';

-- 03: Select all records where the value of the City column contains the letter "a".

SELECT * 
FROM Customers
WHERE City LIKE '%a%';

-- 04: Select all records where the value of the City column starts with letter "a" and ends with the letter "b".

SELECT * 
FROM Customers
WHERE City LIKE 'a%b';

-- 05: Select all records where the value of the City column does NOT start with the letter "a".

SELECT * 
FROM Customers
WHERE City NOT LIKE 'a%';

--**********************************************************************************************************************

-- Wildcards

-- 01: Select all records where the second letter of the City is an "a".

SELECT * 
FROM Customers
WHERE City LIKE '_a%';

-- 02: Select all records where the first letter of the City is an "a" or a "c" or an "s".

SELECT * 
FROM Customers
WHERE City LIKE '[acs]%';

-- 03: Select all records where the first letter of the City starts with anything from an "a" to an "f".

SELECT * 
FROM Customers
WHERE City LIKE '[a-f]%';

-- 04: Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".

SELECT * 
FROM Customers
WHERE City LIKE '[!acf]%';

--**********************************************************************************************************************

-- In

-- 01: Use the IN operator to select all the records where Country is either "Norway" or "France".

SELECT * 
FROM Customers
WHERE Country IN ('Norway', 'France');

-- 02: Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".

SELECT * 
FROM Customers
WHERE Country NOT IN ('Norway', 'France');

--**********************************************************************************************************************

-- Between

-- 01: Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20.

SELECT * 
FROM Products
WHERE Price 
BETWEEN 10 AND 20;

-- 02: Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.

SELECT * 
FROM Products
WHERE Price 
NOT BETWEEN 10 AND 20;

-- 03: Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.

SELECT * 
FROM Products
WHERE ProductName 
BETWEEN 'Geitost' AND 'Pavlova';

--**********************************************************************************************************************

-- Alias

-- 01: When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.

SELECT CustomerName, Address, PostalCode AS Pno
FROM Customers;

-- 02: When displaying the Customers table, refer to the table as Consumers instead of Customers.

SELECT *
FROM Customers AS Consumers;
