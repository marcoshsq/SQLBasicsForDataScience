/*SQL Wildcard Characters.

A wildcard character is used to substitute one or more characters in a string.

Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.*/

SELECT * 
FROM Customers
WHERE City LIKE 'ber%';
