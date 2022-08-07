-- Source: https://www.w3schools.com/sql/sql_in.asp

/* The SQL IN Operator

The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

Syntax*/

SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

-- or

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

-- Examples:

-- The following SQL statement selects all customers that are located in "Germany", "France" or "UK":

SELECT * 
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers that are NOT located in "Germany", "France" or "UK":

SELECT * 
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- The following SQL statement selects all customers that are from the same countries as the suppliers:

SELECT * 
FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

--******************************************************************************************************************************

/* The SQL BETWEEN Operator

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included. 

Syntax*/

SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- Example: The following SQL statement selects all products with a price between 10 and 20:

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20;

-- NOT BETWEEN Example: To display the products outside the range of the previous example, use NOT BETWEEN

SELECT * 
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- BETWEEN with IN Example:
-- The following SQL statement selects all products with a price between 10 and 20. In addition; do not show 
-- products with a CategoryID of 1,2, or 3:

SELECT * 
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

-- BETWEEN Text Values Example
-- The following SQL statement selects all products with a ProductName between Carnarvon Tigers and Mozzarella di Giovanni:

SELECT * 
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- The following SQL statement selects all products with a ProductName between Carnarvon Tigers and Chef Anton's Cajun Seasoning:

SELECT * 
FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;

-- NOT BETWEEN Text Values Example
-- The following SQL statement selects all products with a ProductName not between Carnarvon Tigers and Mozzarella di Giovanni:

SELECT * 
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'

-- BETWEEN Dates Example

-- The following SQL statement selects all orders with an OrderDate between '01-July-1996' and '31-July-1996':

SELECT * 
FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;
ORDER BY ProductName;

-- or

SELECT * 
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
