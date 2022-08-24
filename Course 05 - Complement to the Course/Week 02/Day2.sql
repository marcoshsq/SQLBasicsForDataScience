-- Source: https://www.w3schools.com/sql/sql_where.asp

/*The SQL WHERE Clause

The WHERE clause is used to filter records.

And it's not only used in SELECT statements, it's also used in UPDATE, DELETE, etc.!*/

--Syntax:

SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Example:

SELECT * 
FROM Customers
WHERE Country='Mexico';

--or

SELECT * 
FROM Customers
WHERE Country='Germany';

--**********************************************************************************************************************

/*Text Fields vs. Numeric Fields

SQL requires single quotes around text values (most database systems will also allow double quotes).

However, numeric fields should not be enclosed in quotes, example: */

SELECT * 
FROM Customers
WHERE CustomerID=1;

SELECT * 
FROM Customers
WHERE PostalCode=70563;

--**********************************************************************************************************************

/*Operators in The WHERE Clause

The following operators can be used in the WHERE clause: 

= |	Equal	
> |	Greater than	
< |	Less than	
>= | Greater than or equal	
<= | Less than or equal	
<> or !=| Not equal	
BETWEEN |	Between a certain range	
LIKE |	Search for a pattern	
IN |	To specify multiple possible values for a column

Examples:*/

SELECT * 
FROM Products
WHERE Price = 18;

--***

SELECT * 
FROM Products
WHERE Price > 30;

--***

SELECT * 
FROM Products
WHERE Price < 30;

--***

SELECT * 
FROM Products
WHERE Price >= 30;

--***

SELECT * 
FROM Products
WHERE Price <= 30;

--***

SELECT * 
FROM Products
WHERE Price <> 30;

--***

SELECT * 
FROM Products
WHERE Price BETWEEN 50 AND 60;

--***

SELECT * 
FROM Customers
WHERE City LIKE 's%';

--**

SELECT * 
FROM Customers
WHERE City IN ('Paris','London');

--**********************************************************************************************************************

/*The SQL AND, OR and NOT Operators

The WHERE clause can be combined with AND, OR, and NOT operators.

The AND and OR operators are used to filter records based on more than one condition:

  The AND operator displays a record if all the conditions separated by AND are TRUE.
  The OR operator displays a record if any of the conditions separated by OR is TRUE.
  The NOT operator displays a record if the condition(s) is NOT TRUE.

Examples: */

SELECT * 
FROM Customers
WHERE Country='Germany' AND City='Berlin';

-- Only return a statement only from "Customers" where country is "Germany" AND city is "Berlin".

--***

SELECT * 
FROM Customers
WHERE City='Berlin' OR City='München';

-- Only return a statement only from "Customers" where city is "Berlin" OR "München"

SELECT * 
FROM Customers
WHERE City='Berlin' OR City='München';

-- Only return a statement only from "Customers" where country is "Germany" OR "Spain"

--***

SELECT * 
FROM Customers
WHERE NOT Country='Germany';

-- Only return a statement only from "Customers" where country is NOT "Germany"

/*Combining AND, OR and NOT

You can also combine the AND, OR and NOT operators.

The following SQL statement selects all fields from "Customers" where country is "Germany" AND city must be "Berlin" OR "München" 
(use parenthesis to form complex expressions):*/

SELECT * 
FROM Customers
WHERE Country='Germany' 
  AND (City='Berlin' OR City='München');

--***

SELECT * 
FROM Customers
WHERE NOT Country='Germany' 
  AND NOT Country='USA';
