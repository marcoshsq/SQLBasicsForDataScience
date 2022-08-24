/*What is an alias:

SQL aliases gives a table or column a temporary name;
Making the column more readable, and only existis for
the duration of the query.

Example:*/

SELECT column_name
FROM table_name AS alias_name;

--***************************************************************************************************

/*Self Joins:

Take the table and join it to itself, treating it like two separate tables.

Example: The following query matches customers that are from the same query.*/

SELECT A.CustomerName AS CustomerName1
	,B.CustomerName AS CustomerName2
	,A.City
FROM Customers A
	,Customers B
WHERE A.CustomerID = B.CustomerID
	AND A.City = B.City
ORDER BY A.City;
