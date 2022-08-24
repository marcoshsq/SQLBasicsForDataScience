-- Source: https://www.w3schools.com/sql/sql_min_max.asp

-- SQL MIN() and MAX() Functions

/* The SQL MIN() and MAX() Functions

The MIN() function returns the smallest value of the selected column.

The MAX() function returns the largest value of the selected column.

*/

-- MIN() Syntax

SELECT MIN(column_name)
FROM table_name
WHERE condition;

-- MAX() Syntax

SELECT MAX(column_name)
FROM table_name
WHERE condition;

-- Examples:

SELECT MAX(Price) AS LargestPrice
FROM Products;

SELECT MIN(Price) AS SmallestPrice
FROM Products;

--************************************************************************************************************************************

-- COUNT(), AVG() and SUM() Functions

/* The COUNT() function returns the number of rows that matches a specified criterion.

COUNT() Syntax */

SELECT COUNT(column_name)
FROM table_name
WHERE condition;

/* The AVG() function returns the average value of a numeric column. 

AVG() Syntax */

SELECT AVG(column_name)
FROM table_name
WHERE condition;

/* The SUM() function returns the total sum of a numeric column. 

SUM() Syntax */

SELECT SUM(column_name)
FROM table_name
WHERE condition;

-- Examples:

SELECT SUM(Quantity)
FROM OrderDetails;

SELECT AVG(Price)
FROM Products;

SELECT COUNT(ProductID)
FROM Products;

--************************************************************************************************************************************
