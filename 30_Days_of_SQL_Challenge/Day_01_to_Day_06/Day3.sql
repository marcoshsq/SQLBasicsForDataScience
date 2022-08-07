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

-- Example 01: 

INSERT INTO Customers 
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');


/*Insert Data Only in Specified Columns

It is also possible to only insert data in specific columns.

The following SQL statement will insert a new record, but only insert data in the 
"CustomerName", "City", and "Country" columns (CustomerID will be updated automatically):

*/

INSERT INTO Customers 
    (CustomerName, City, Country)
VALUES 
    ('Cardinal', 'Stavanger', 'Norway');

--**********************************************************************************************************************

-- NULL Values

/* What is a NULL Value?

A field with a NULL value is a field with no value.

If a field in a table is optional, it is possible to insert a 
new record or update a record without adding a value to this field. 
Then, the field will be saved with a NULL value.*/

/* How to Test for NULL Values?

It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
We will have to use the IS NULL and IS NOT NULL operators instead.

Example:*/

SELECT column_names
FROM table_name
WHERE column_name IS NULL;

-- or

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

/* The IS NULL Operator

The IS NULL operator is used to test for empty values (NULL values).

The following SQL lists all customers with a NULL value in the "Address" field:

*/

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

/* The IS NOT NULL Operator

The IS NOT NULL operator is used to test for non-empty values (NOT NULL values).

The following SQL lists all customers with a value in the "Address" field:

*/

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;
