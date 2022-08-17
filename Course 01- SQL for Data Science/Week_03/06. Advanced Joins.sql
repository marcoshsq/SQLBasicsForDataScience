/*

- Left Joins vs Right Joins:

Left Joins returns all the records from the left table (table 01), and the 
matched records from the right table (table 02).

The result is NULL from the right side if there isn't a match.

Right Joins returns all the records from the right table (table 02), and the 
matched records from the left table (table 01).

The result is NULL from the left side if there isn't a match.

- Full Outer Join:

Return all records from both tables when there is a match.

*/

-- Left Join Example:

-- This example will select all customers and any order they might have.

SELECT C.CustomerName
	,O.OrderID
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;


-- Right Join Example:

-- This example will select all employees, and any order they might have placed.

SELECT Orders.OrderID
	,Employees.LastName
	,Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeesID
ORDER BY Orders.OrderID;

-- Full Outer Join Example:

-- This example will select all customers, and all orders.

SELECT Customers.CustomersName
	,Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomersID = Orders.CustomersID
ORDER BY Customers.CustomersName;

/* Unions:

The Union operator is used to combine the result of two or more SELECT statements;
Each SELECT must have the same number of columns;
Columns must have similar data types;
The columns in each SELECT must be in the same order.

*/

-- Syntax:

SELECT Column_name
FROM Table_01

UNION

SELECT Column_name
FROM Table_02;

-- Example:

SELECT City
	,Country
FROM Customers
WHERE Country = "Germany"

UNION

SELECT City
	,Country
FROM Suppliers
WHERE Country = "Germany"
ORDER BY City;

-- (づ｡◕‿‿◕｡)づ
