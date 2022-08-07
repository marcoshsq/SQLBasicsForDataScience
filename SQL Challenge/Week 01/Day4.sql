-- Source: https://www.w3schools.com/sql/sql_update.asp

/* The SQL UPDATE Statement

The UPDATE statement is used to modify the existing records in a table.

Syntax*/

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

/* UPDATE Table

The following SQL statement updates the first customer (CustomerID = 1) 
with a new contact person and a new city.*/

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

/* UPDATE Multiple Records

It is the WHERE clause that determines how many records will be updated.

The following SQL statement will update the ContactName to "Juan" for all records where country is "Mexico":*/

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Careful when updating records. If you omit the WHERE clause, ALL records will be updated!

--**********************************************************************************************************************

/* The SQL DELETE Statement

The DELETE statement is used to delete existing records in a table.

Syntax*/

DELETE FROM table_name WHERE condition;

-- Example: The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:

DELETE FROM Customers 
WHERE CustomerName='Alfreds Futterkiste';

/* Delete All Records

It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:*/

DELETE FROM table_name;

-- The following SQL statement deletes all rows in the "Customers" table, without deleting the table:

DELETE FROM Customers;

--**********************************************************************************************************************
