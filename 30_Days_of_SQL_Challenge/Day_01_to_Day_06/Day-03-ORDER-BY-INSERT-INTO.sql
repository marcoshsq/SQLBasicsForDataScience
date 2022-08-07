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







