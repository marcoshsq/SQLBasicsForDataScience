-- Source: https://www.w3schools.com/sql/sql_like.asp

/* The SQL LIKE Operator

The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

 The percent sign (%) represents zero, one, or multiple characters
 The underscore sign (_) represents one, single character
 
MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).

The percent sign and the underscore can also be used in combinations!

LIKE Syntax*/

SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

/*

Here are some examples showing different LIKE operators with '%' and '_' wildcards:

WHERE CustomerName LIKE 'a%' | Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	| Finds any values that end with "a"
WHERE CustomerName LIKE '%or%' |	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	| Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	| Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	| Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	| Finds any values that start with "a" and ends with "o"

Tip: You can also combine any number of conditions using AND or OR operators.

*/

-- LIKE Examples:

-- 01: The following SQL statement selects all customers with a CustomerName starting with "a":

SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a%';

-- 02: The following SQL statement selects all customers with a CustomerName ending with "a":

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%a';

-- 03: The following SQL statement selects all customers with a CustomerName that have "or" in any position:

SELECT * 
FROM Customers
WHERE CustomerName LIKE '%or%';

-- 04: The following SQL statement selects all customers with a CustomerName that have "r" in the second position:

SELECT * 
FROM Customers
WHERE CustomerName LIKE '_r%';

-- 05: The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:

SELECT * 
FROM Customers
WHERE CustomerName LIKE 'a__%';

-- 06: The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "o":

SELECT * 
FROM Customers
WHERE ContactName LIKE 'a%o';

-- 07: The following SQL statement selects all customers with a CustomerName that does NOT start with "a":

SELECT * 
FROM Customers
WHERE CustomerName NOT LIKE 'a%';

--*****************************************************************************************************************************

/* SQL Wildcard Characters

A wildcard character is used to substitute one or more characters in a string.

Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

*/

/*

Wildcard Characters in MS Access:

Symbol | Description |	Example
*	| Represents zero or more characters |	bl* finds bl, black, blue, and blob
? |	Represents a single character	| h?t finds hot, hat, and hit
[] |	Represents any single character within the brackets	| h[oa]t finds hot and hat, but not hit
!	| Represents any character not in the brackets	| h[!oa]t finds hit, but not hot and hat
-	| Represents any single character within the specified range |	c[a-b]t finds cat and cbt
#	| Represents any single numeric character |	2#5 finds 205, 215, 225, 235, 245, 255, 265, 275, 285, and 295

Wildcard Characters in SQL Server:

Symbol |	Description |	Example
%	| Represents zero or more characters |	bl% finds bl, black, blue, and blob
_	| Represents a single character |	h_t finds hot, hat, and hit
[]	| Represents any single character within the brackets	| h[oa]t finds hot and hat, but not hit
^	| Represents any character not in the brackets	h[^oa]t finds | hit, but not hot and hat
-	| Represents any single character within the specified range |	c[a-b]t finds cat and cbt

*/
