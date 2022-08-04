/*The WHERE clause

Used to filter the query, optimizing performance and results

Examples: */

-- Filtering with a single condition:
SELECT ProdctName, ProductID, UnitPrice
FROM Products
WHERE ProductName = "Tofu";

-- Filtering with a single value:
SELECT ProdctName, ProductID, UnitPrice
FROM Products
WHERE UnitPrice >= 75;

-- Checking for Non-Matches:
SELECT ProdctName, ProductID, UnitPrice
FROM Products
WHERE ProductName <> "Alice Mutton";

-- Working with a Range of Values:
SELECT ProdctName, ProductID, UnitPrice, StocksNum
FROM Products
WHERE StocksNum BETWEEN 15 AND 50;

-- Filtering for Null's (No values):
SELECT ProdctName, ProductID, UnitPrice, StocksNum
FROM Products
WHERE StocksNum BETWEEN 15 AND 50;

/*Note: A null value is different from zero or an empty string, Null means "There is no data in this column."*/
