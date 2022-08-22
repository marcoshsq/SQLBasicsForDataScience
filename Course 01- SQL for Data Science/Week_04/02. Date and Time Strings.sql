-- Example

SELECT BirthDate
	,STRFTIME("%Y", BirthDate) AS Year
	,STRFTIME("%m", BirthDate) AS Month
	,STRFTIME("%d", BirthDate) AS Day
FROM employees;

-- Current Date:

SELECT DATE ("Now");

-- Day, Month and Year for current date:

SELECT STRFTIME("%Y %m %d", "Now");

SELECT STRFTIME("%H %M %S %s", "Now");
