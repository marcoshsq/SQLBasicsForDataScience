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
