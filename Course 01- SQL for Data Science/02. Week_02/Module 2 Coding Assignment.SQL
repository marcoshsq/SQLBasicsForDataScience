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

-- 04: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT CustomerId, InvoiceId, Total, InvoiceDate
FROM Invoices
WHERE CustomerID IN (56,58) AND 
Total BETWEEN 1 AND 5;

-- 05: Find all the tracks whose name starts with 'All'.

SELECT Name
FROM Tracks
WHERE Name Like "All%";

-- 06: Find all the customer emails that start with "J" and are from gmail.com.

SELECT Email
FROM Customers
WHERE Email Like "J%gmail.com";

-- 07: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT InvoiceID, BillingCity, Total
FROM iNVOICES
WHERE BillingCity IN ("Brasília", "Edmonton", "Vancouver ")
ORDER BY InvoiceID DESC;

-- 08: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerId, COUNT(*) AS Orders
FROM Invoices
GROUP BY CustomerId
ORDER BY Orders DESC;

-- 09: Find the albums with 12 or more tracks.

SELECT AlbumId, Count(*) AS Ntracks
FROM Tracks
GROUP BY AlbumId
HAVING COUNT (*) >= 12;
