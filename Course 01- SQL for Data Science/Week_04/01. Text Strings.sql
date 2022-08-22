-- Concatenation: used to join strings.

SELECT CompanyName
	,ContactName
	,CompanyName || "(" | ContactName | ")"
FROM Customers

/* Trimming Strings:

Trims the leading or trailing space from a string.
TRIM
RTRIM
LTRIM */

SELECT TRIM ("           Nice!    ")
