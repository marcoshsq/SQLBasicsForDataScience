/*Overview of view u.u

- A view is a stored query;
- Can add or remove columns without changing the schema;
- Use it to encapsulate queries;
- The view will be removed after the database connection has endend 

Syntax example:*/

CREATE [TEMP] VIEW [IF NOT EXISTS] view_name(column_name_list) AS slect_statement

-- Exampla:

CREATE VIEW
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
INNER JOIN Employees e ON et.EmployeeID = e.EmployeeID
