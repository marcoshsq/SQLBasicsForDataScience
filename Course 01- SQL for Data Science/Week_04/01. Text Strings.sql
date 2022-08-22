-- Concatenation: used to join strings.

SELECT CompanyName
	,ContactName
	,CompanyName || "(" | ContactName | ")"
FROM Customers;

/* Trimming Strings:

Trims the leading or trailing space from a string.
TRIM
RTRIM
LTRIM */

SELECT TRIM ("           Nice!    ") AS TrimmedString;

-- Substring: Returns a specific number of characters from a string.

SUBSTR (string_name, string_position, number_returned); -- Syntax

SELECT first_name
	,SUBSTR(first_name, 2, 3)
FROM employees
WHERE DepartmentID = 60;

-- Upper and Lower:

SELECT UPPER(column_name)
FROM table_name;

SELECT LOWER(column_name)
FROM table_name;

SELECT UCASE(column_name)
FROM table_name;
