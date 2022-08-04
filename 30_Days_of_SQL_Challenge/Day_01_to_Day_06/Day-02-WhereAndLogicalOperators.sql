-- Source: https://www.w3schools.com/sql/sql_where.asp

/*The SQL WHERE Clause

The WHERE clause is used to filter records.

And it's not only used in SELECT statements, it's also used in UPDATE, DELETE, etc.!*/

--Syntax:

SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Example:

SELECT * FROM Customers
WHERE Country='Mexico';

/*Text Fields vs. Numeric Fields

SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes, example: */

SELECT * FROM Customers
WHERE CustomerID=1;

/*Operators in The WHERE Clause

The following operators can be used in the WHERE clause: */

