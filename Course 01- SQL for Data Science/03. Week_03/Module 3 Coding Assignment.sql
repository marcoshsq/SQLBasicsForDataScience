-- All of the questions in this quiz refer to the open source Chinook Database.

------------------------------------------------------------------------------------

-- 01. Using a subquery, find the names of all the tracks for the album "Californication".

SELECT Name
	,AlbumID
FROM Tracks
WHERE AlbumId IN (
		SELECT AlbumId
		FROM Albums
		WHERE Title = "Californication"
		);
    
------------------------------------------------------------------------------------

-- 02. Find the total number of invoices for each customer along with the customer's full name, city and email.

SELECT FirstName
	,LastName
	,City
	,Email
	,COUNT(I.CustomerId) AS Invoices
FROM Customers C
INNER JOIN Invoices I ON C.CustomerId = I.CustomerId
GROUP BY C.CustomerId;

------------------------------------------------------------------------------------

-- 03. Retrieve the track name, album, artistID, and trackID for all the albums.

SELECT Tracks.Name
	,A.Name AS Artist
	,Albums.Title AS Album
	,Tracks.TrackId
FROM (
	(
		Tracks INNER JOIN Albums ON Tracks.AlbumId = Albums.AlbumId
		) INNER JOIN Artists A ON A.ArtistId = Albums.ArtistId
	);
  
------------------------------------------------------------------------------------

-- 04. Retrieve a list with the managers last name, and the last name of the employees who report to him or her.

SELECT M.LastName AS Manager
	,E.LastName AS Employee
FROM Employees E
INNER JOIN Employees M ON E.ReportsTo = M.EmployeeID;

------------------------------------------------------------------------------------

-- 05. Find the name and ID of the artists who do not have albums. 

SELECT Name AS Artist
	,Artists.ArtistId
	,Albums.Title AS Album
FROM Artists
LEFT JOIN Albums ON Artists.ArtistId = Albums.ArtistId
WHERE Album IS NULL;

------------------------------------------------------------------------------------

-- 06. Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.

SELECT FirstName,
       LastName
FROM Employees
UNION
SELECT FirstName,
       LastName
FROM Customers
ORDER BY LastName DESC;

------------------------------------------------------------------------------------

-- 07. See if there are any customers who have a different city listed in their billing city versus their customer city.

SELECT C.FirstName
	,C.LastName
	,C.City AS CustomerCity
	,I.BillingCity
FROM Customers C
INNER JOIN Invoices I ON C.CustomerId = I.CustomerId
WHERE CustomerCity != BillingCity;
