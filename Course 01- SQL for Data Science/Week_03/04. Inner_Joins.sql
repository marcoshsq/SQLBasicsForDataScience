/*What is an Inner Join?

The INNER JOIN keyword selects records that 
have matching values in both tables*/

-- Syntax:

SELECT supplier.CompanyName
	,ProductName
	,UnitPrice
FROM Suppliers
INNER JOIN Products ON Suppliers.supplierID = Products.supplierID;

/*Notes:

- Join type is specified (INNER JOIN);
- Join condition is in the FROM clause, and uses the ON clause;
- Joining more tables affects overall performance;
- There's no limit on Joins;
- To make it easier, list all tables, then define the condition.

*/

SELECT o.OrderID
	,c.CompanyName
	,e.LastName
FROM (
	(
		Orders O INEER JOIN Customer c ON o.CustomerID = c.CustomerID
		) INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID
	);

/*Best practices:

Make sure to pre-qualify the names;
Don't make unecessary joins; 
How are the records connected?*/
