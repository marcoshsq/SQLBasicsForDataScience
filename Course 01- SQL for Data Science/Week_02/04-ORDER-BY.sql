/*Often the data in a DB comes in a random order (usually the order in which they were entered), 
the order by command is used to sort the data and perform a more logical query.*/

-- Syntax

SELECT something
FROM database
ORDER BY characteristic

/*Rules:

- Can sort by a column you did not retrieve
- Must always be the last clause in a select statement
- Takes the name of one or more columns
- Separate the items with a comma

*/
