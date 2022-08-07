-- Source: https://www.w3schools.com/sql/sql_in.asp

/* The SQL IN Operator

The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

Syntax*/

SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

-- or

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
