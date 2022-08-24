/*EX01 - Retrieve all the records from the Employees table.

What is Robert King's mailing address? Note: You will have to scroll to the right in order to see it.

ans: 590 Columbia Boulevard West, Lethbridge, AB, CANADA T1K 5N8 */

SELECT *
FROM Employees;
    
--

/*EX02 - Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.

Which of the employees listed below has a birthdate of 3-3-1965?

ans: Steve */

SELECT
    FirstName, 
    LastName, 
    Birthdate, 
    Address, 
    City,  
    State
FROM
    Employees;

--

/*EX03 - Retrieve all the columns from the Tracks table, but only return 20 rows.

What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"?

ans: 375418 */

SELECT *
FROM Tracks
LIMIT 20;

--
