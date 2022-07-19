/*

Pergunta 1
To prepare for the graded coding quiz, you will be asked to execute a query, read the results, 
and select the correct answer you found in the results. 
This question is for you to practice executing queries. 
I have provided you the script for this query, a simple select statement. 
Think of this as a sandbox for you to practice. 
As you practice executing queries, take time to read the results in order 
to prepare for the quiz and get comfortable writing a basic select statement. 

*/

/* Ex01 - Retrieve all the data from the tracks table. Who is the composer for track 18?
ans: AC/DC */

Select *
From Tracks;

-- 

/* Ex02 - Retrieve all data from the artists table. Look at the list of artists, how many artists are you familiar with (there is no wrong answer here)?
ans: 12 */

Select *
From Artists;

--

/* Ex03 - Retrieve all data from the invoices table. What is the billing address for customer 31?
ans: 194A Chain Lake Drive */

Select *
From Invoices
WHERE CustomerId = 31;

--

/* Ex04 - Return the playlist id, and name from the playlists table. How many playlists are there? Which would you classify is your favorite from this list?
ans: 18 */

Select Playlistid, Name
From Playlists;

--

/* Ex05 - Return the Customer Id, Invoice Date, and Billing City from the Invoices table. 
What city is associated with Customer ID number 42? 
What was the invoice date for the customer in Santiago?
ans: Bordeaux, 2009-04-04 00:00:00 */ 

Select 
  CustomerId,
  InvoiceDate, 
  BillingCity 
From 
  Invoices;

--

/* Ex06 - Return the First Name, Last Name, Email, and Phone, from the Customers table. What is the telephone number for Jennifer Peterson?
ans: */

Select 
  FirstName, 
  LastName, 
  Email, 
  Phone
From 
  Customers;

--

/* Ex07 - 
ans: */



--

/* Ex08 - 
ans: */



--

/* Ex09 - 
ans: */



--

/* Ex10 - 
ans: */



--
