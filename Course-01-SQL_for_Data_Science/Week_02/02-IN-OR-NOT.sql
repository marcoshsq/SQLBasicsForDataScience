/*Advanced Filtering: IN, OR, and NOT

These are commands that help optimize queries.

Examples:*/

--IN: The IN is different from the Between because while the BETWEEN Clause gives you a range of values, the IN is specific.

SELECT ProdctID, UnitPrice, SuplierID
FROM Products
WHERE SuplierID IN (9, 10, 11);

/* OR

The or is a logical operator, basically:

T + T = T
T + F = T
F + T = T
F + F = F

*/

SELECT ProdctID, UnitPrice, SuplierID, ProductName
FROM Products
WHERE ProductName = "Tofu" OR "Kobu";

/*IN vs OR

- IN offers a longer list of result;
- IN is faster;
- IN can contain another SELECT statement;*/
