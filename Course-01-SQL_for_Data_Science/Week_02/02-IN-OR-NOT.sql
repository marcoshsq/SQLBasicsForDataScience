/*Advanced Filtering: IN, OR, and NOT

These are commands that help optimize queries.

Examples:*/

--IN: The IN is different from the Between because while the BETWEEN Clause gives you a range of values, the IN is specific.

SELECT ProdctID, UnitPrice, SuplierID
FROM Products
WHERE SuplierID IN (9, 10, 11);
