/*Subqueries are queries embebed into another querie.
They merge Data from multiple sources togheter to 
add a new filtering criteria.*/

/* Example: Need to know the region each customer is 
from who has had an order with freight over 100. */

SELECT CustomerID
	,CompanyName
	,Region
FROM Customers
WHERE CustomerID IN (
		SELECT CustomerID
		FROM Orders
		WHERE Freight > 100
		); -- SQL always perform the innermost query first 

--****************************************************************************************

-- Best Practices:

/* 
- There is no limit to the number of subqueries, but system performance is affected.
- Subquery SELECT can only retrieve a single column. 
*/

SELECT Customer_name
	,Customer_contact
	,Customer_ID
FROM Customers
WHERE Customer_ID IN (
		SELECT Customer_ID
		FROM Orders
		WHERE Order_number IN (
				SELECT Order_number
				FROM Order_items
				WHERE Prodct_name = "ToothBrush"
				)
		);

-- Subqueries for Calculation:

SELECT COUNT(*) AS orders
FROM Orders
WHERE Customer_ID = "143569"

SELECT Customer_name
	,Customer_state
	,(
		SELECT COUNT(*) AS orders
		FROM Orders
		WHERE Orders.customer_ID = Customer.customer_ID
		) AS orders
FROM Customers
ORDER BY Customer_name
