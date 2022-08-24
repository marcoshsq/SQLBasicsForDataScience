/*Case Statements.

Case Statements is like a If-Then-Else of other programming languages.
Works with SELECT, INSERT, UPDATE and DELETE 

Syntax:

CASE input_expression
		WHEN when_expression
			THEN result_expression [...n]
		ELSE else_result_expression
		END;
*/

-- Example:

SELECT EmployeeID
	,FirstName
	,LastName
	,City
	,CASE City
		WHEN "Calgary"
			THEN "Calgary"
		ELSE "Other"
		END Calgary
FROM Employees
ORDER BY FirstName
	,LastName;


/* Search Case Statement:

CASE boolean_expression
		WHEN when_expression
			THEN result_expression [...n]
		ELSE else_result_expression
		END;

*/

SELECT TrackID
	,Name
	,Bytes
	,CASE 
		WHEN Bytes < 300000
			THEN "Small"
		WHEN Bytes >= 300001
			AND Bytes <= 500000
			THEN "Medium"
		WHEN Bytes >= 500001
			THEN "Large"
		ELSE "Other"
		END BytesCategory
FROM Tracks;
