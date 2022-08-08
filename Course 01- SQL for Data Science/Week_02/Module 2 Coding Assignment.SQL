/*All of the questions in this quiz refer to the open source Chinook Database. 
Please familiarize yourself with the ER diagram to familiarize yourself with the 
table and column names to write accurate queries and get the appropriate answers.
*/

-- 01: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT count(distinct milliseconds)
FROM tracks 
WHERE milliseconds > 5000000;

-- 02: Find all the invoices whose total is between $5 and $15 dollars.

SELECT Total
FROM Invoices
WHERE Total Between 5 and 15;

-- 03: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT FirstName, LastName, Company, State
FROM Customers
WHERE State IN ('RJ','DF','AB','BC','CA','WA','NY');

-- 04: 
-- 05: 
-- 06: 
-- 07: 
-- 08: 
-- 09: 
