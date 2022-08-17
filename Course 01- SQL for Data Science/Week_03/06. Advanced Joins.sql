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
