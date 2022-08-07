-- They are predefined functions in sql, which allow us to perform certain analyzes with the data.

-- The MIN() function returns the smallest value of the selected column.

SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- The MAX() function returns the largest value of the selected column.

SELECT MAX(Price) AS LargestPrice
FROM Products;

-- The COUNT() function returns the number of rows that matches a specified criterion.

SELECT COUNT(ProductID)
FROM Products;

-- The AVG() function returns the average value of a numeric column. 

SELECT AVG(Price)
FROM Products;

-- The SUM() function returns the total sum of a numeric column. 

SELECT SUM(Quantity)
FROM OrderDetails;
