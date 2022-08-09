/*Subqueries are queries embebed into another querie.
They merge Data from multiple sources togheter to 
add a new filtering criteria.*/

-- Example:

/*Need to know the region each 
customer is from who has had an 
order with freight over 100. */

SELECT CustomerID, CompanyName, Region
FROM Customers
WHERE CustomerID IN 
  (
    SELECT CustomerID
    FROM Orders
    WHERE Freight > 100
  );
