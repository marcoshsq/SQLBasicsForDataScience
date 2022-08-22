-- Concatenation: used to join strings.

SELECT CompanyName
	,ContactName
	,CompanyName || "(" | ContactName | ")"
FROM Customers
