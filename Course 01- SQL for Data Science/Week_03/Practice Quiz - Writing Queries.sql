-- All of the questions in this quiz pull from the open source Chinook Database.

-- 01. How many albums does the artist Led Zeppelin have? 

SELECT count(*)
FROM (
	SELECT *
	FROM artists
	LEFT JOIN albums ON artists.ArtistId = albums.ArtistId
	)
WHERE Name = "Led Zeppelin";

-- 02. Create a list of album titles and the unit prices for the artist "Audioslave".



-- 03. Find the first and last name of any customer who does not have an invoice.



-- 04. Find the total price for each album.



-- 05. How many records are created when you apply a Cartesian join to the invoice and invoice items table?


