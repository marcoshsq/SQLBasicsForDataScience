-- Source: https://www.w3schools.com/sql/sql_join.asp

/* SQL Joins

A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

Example:

Let's say we have a table called "Orders" that has columns "OrderID", "CustomerID", and "OrderDate".
And we also have the Customers table with the columns "CustomerID",	"CustomerName",	"ContactName" and	"Country"

The "CustomerID" column in the "Orders" table refers to the "CustomerID" in the "Customers" table. 
The relationship between the two tables above is the "CustomerID" column.

Then, we can create the following SQL statement (that contains an INNER JOIN), that selects records that have matching values in both tables:*/

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

/*The different Types of SQL JOINs:

- (INNER) JOIN: Returns records that have matching values in both tables
- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table*/
