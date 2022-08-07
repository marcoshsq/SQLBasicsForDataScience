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

--****************************************************************************************************************

/* SQL Aliases

SQL aliases are used to give a table, or a column in a table, a temporary name.

Aliases are often used to make column names more readable.

An alias only exists for the duration of that query.

An alias is created with the AS keyword.*/

--Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

-- Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;

-- Alias for Columns Examples
-- The following SQL statement creates two aliases, one for the CustomerID column and one for the CustomerName column:

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- The following SQL statement creates two aliases, one for the CustomerName column and one for the ContactName column. Note: It requires double quotation marks or square brackets if the alias name contains spaces:

SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

-- The following SQL statement creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

-- Note: To get the SQL statement above to work in MySQL use the following:

SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

-- Note: To get the SQL statement above to work in Oracle use the following:

SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

/* Alias for Tables Example
The following SQL statement selects all the orders from the customer with CustomerID=4 (Around the Horn). We use the "Customers" 
and "Orders" tables, and give them the table aliases of "c" and "o" respectively (Here we use aliases to make the SQL shorter):*/

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

-- The following SQL statement is the same as above, but without aliases:

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

/* 

Aliases can be useful when:

There are more than one table involved in a query
Functions are used in the query
Column names are big or not very readable
Two or more columns are combined together

*/
