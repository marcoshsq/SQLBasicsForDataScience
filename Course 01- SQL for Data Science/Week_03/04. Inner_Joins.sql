/*What is an Inner Join?

The INNER JOIN keyword selects records that 
have matching values in both tables*/

-- Syntax:

SELECT supplier.CompanyName
	,ProductName
	,UnitPrice
FROM Suppliers
INNER JOIN Products ON Suppliers.supplierID = Products.supplierID
