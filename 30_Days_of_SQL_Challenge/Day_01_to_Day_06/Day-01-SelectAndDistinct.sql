-- Source: https://www.w3schools.com/sql/sql_select.asp

/* The SQL SELECT Statement

The SELECT statement is used to select data from a database. The data returned is stored in a result table, called the result-set.

SELECT Syntax */

SELECT 
  column1, column2, ...
FROM 
  table_name;

/*Here, column1, column2, ... are the field names of the table you want to select data from. 
If you want to select all the fields available in the table, use the following syntax:*/

SELECT 
  * 
FROM
  table_name;

-- other examples:

SELECT 
  CustomerName, 
  City 
FROM
  Customers;
  
-- ******************************************************************************************

/* The SQL SELECT DISTINCT Statement

The SELECT DISTINCT statement is used to return only distinct (different) values.

Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

SELECT DISTINCT Syntax */

SELECT DISTINCT 
  column1, column2, ...
FROM 
  table_name;
  
-- example:

SELECT DISTINCT 
  Country 
FROM
  Customers;

-- or

SELECT 
  COUNT(DISTINCT Country) 
FROM 
  Customers;
  
  
SELECT 
  Count(*) AS DistinctCountries
FROM 
  (SELECT 
    DISTINCT Country 
   FROM 
    Customers
  );
