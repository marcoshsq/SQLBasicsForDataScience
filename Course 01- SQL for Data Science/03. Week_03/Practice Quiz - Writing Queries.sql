-- All of the questions in this quiz pull from the open source Chinook Database.

------------------------------------------------------------------------------------

-- 01. How many albums does the artist Led Zeppelin have? 

SELECT count(*)
FROM (
	SELECT *
	FROM artists
	LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
	)
WHERE Name = "Led Zeppelin";

------------------------------------------------------------------------------------

-- 02. Create a list of album titles and the unit prices for the artist "Audioslave".

SELECT a.UnitPrice
	,b.Title
	,b.Name
FROM (
	SELECT tracks.AlbumId
		,invoice_items.UnitPrice
	FROM tracks
	LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
	) AS a
LEFT JOIN (
	SELECT artists.Name
		,albums.Title
		,albums.AlbumId
	FROM artists
	LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
	) AS b ON a.AlbumId = b.AlbumId
WHERE b.Name = "Audioslave";

------------------------------------------------------------------------------------

-- 03. Find the first and last name of any customer who does not have an invoice.

SELECT customers.FirstName
	,customers.LastName
	,invoices.InvoiceId
FROM customers
LEFT JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE invoices.InvoiceId IS NULL;

------------------------------------------------------------------------------------

-- 04. Find the total price for each album.

SELECT sum(b.UnitPrice) AS TotalPrice
	,b.Title AS Title
FROM (
	SELECT a.UnitPrice AS UnitPrice
		,albums.Title AS Title
	FROM (
		SELECT tracks.AlbumId
			,invoice_items.UnitPrice
		FROM tracks
		LEFT JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
		) AS a
	LEFT JOIN albums ON a.AlbumId = albums.AlbumId
	WHERE albums.Title = "Big Ones"
	) AS b;

------------------------------------------------------------------------------------

-- 05. How many records are created when you apply a Cartesian join to the invoice and invoice items table?

SELECT invoices.InvoiceId
FROM invoices
CROSS JOIN invoice_items;
