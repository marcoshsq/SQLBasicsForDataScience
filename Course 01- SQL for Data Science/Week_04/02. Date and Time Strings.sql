-- Example

SELECT BirthDate
	,STRFTIME("%Y", BirthDate) AS Year
	,STRFTIME("%m", BirthDate) AS Month
	,STRFTIME("%d", BirthDate) AS Day
FROM employees;
