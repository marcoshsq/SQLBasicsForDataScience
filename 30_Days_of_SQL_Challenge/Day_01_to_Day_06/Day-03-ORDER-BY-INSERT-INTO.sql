-- Source: https://www.w3schools.com/sql/sql_orderby.asp

/*The SQL ORDER BY Keyword

The ORDER BY keyword is used to sort the result-set in ascending or descending order.

The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

Syntax: */

SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

/* Example

The following SQL statement selects all customers from the "Customers" table, sorted by the "Country" column:

*/

SELECT * 
FROM Customers
ORDER BY Country;
    
/* DESC Example

The following SQL statement selects all customers from the "Customers" table, sorted DESCENDING by the "Country" column:

*/

SELECT * 
FROM Customers
ORDER BY Country DESC;

/* ORDER BY Several Columns Example

The following SQL statement selects all customers from the "Customers" table, sorted by the 
"Country" and the "CustomerName" column. This means that it orders by Country, but if some 
rows have the same Country, it orders them by CustomerName:

*/

SELECT * 
FROM Customers
ORDER BY Country, CustomerName;

/* ORDER BY Several Columns Example 2

The following SQL statement selects all customers from the "Customers" table, 
sorted ascending by the "Country" and descending by the "CustomerName" column:

*/

SELECT * 
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

--**********************************************************************************************************************

/* The SQL INSERT INTO Statement

The INSERT INTO statement is used to insert new records in a table.

It is possible to write the INSERT INTO statement in two ways:*/

-- 1. Specify both the column names and the values to be inserted:

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

/* 2. If you are adding values for all the columns of the table, 
you do not need to specify the column names in the SQL query. 
However, make sure the order of the values is in the same order 
as the columns in the table. Here, the INSERT INTO syntax would 
be as follows:*/

INSERT INTO table_name
VALUES (value1, value2, value3, ...);





