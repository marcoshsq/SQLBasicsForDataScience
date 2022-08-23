/*Overview of view u.u

- A view is a stored query;
- Can add or remove columns without changing the schema;
- Use it to encapsulate queries;
- The view will be removed after the database connection has endend 

Syntax example:*/

CREATE [TEMP] VIEW [IF NOT EXISTS] view_name(column_name_list) AS slect_statement

-- Exampla:

CREATE VIEW my_view
AS
SELECT r.RegionDescription
	,t.TerritoryDescription
	,e.LastName
	,e.FirstName
	,e.HireDate
	,e.ReportsTo
FROM Region r
INNER JOIN Territories t ON r.RegionID = t.RegionID
INNER JOIN EmployeesTerritories et ON t.TerritoryID = et.TerritoryID
INNER JOIN Employees e ON et.EmployeeID = e.EmployeeID;

-- To actually view the data, you must use a select:

SELECT *
FROM my_view
DROP VIEW my_view;

/* The beauty of the view is that it can be used like a table. But it's unlike a table in that you 
don't have to have ETL or run ETL on any of the data. This helps a lot by encapsulating complex 
queries or complex calculations that you're trying to write. It can really help simplify it. It can 
also be used in pretty much any database, except for stored procedures.
*/

SELECT COUNT(oryDescription)
	,LastName
	,FirstName
FROM my_view
ORDER BY FirstName
	,LastName;
