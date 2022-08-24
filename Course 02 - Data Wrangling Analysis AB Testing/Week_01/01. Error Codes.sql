/* Error Codes

Log onto Mode Analytics and from the home page, create a new report by clicking on the green
plus sign button in the upper right-hand corner. Enter the starter code when provided for each
exercise. You may want to create a new tab for each exercise.

Please use the discussion forum for any questions and/or comments you might have. Once you
have tried the exercises, feel free to watch the solutions video. Good luck with your practice!
Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data.

*/

/* Exercise 1:

Goal: Here we use users table to pull a list of user email addresses. Edit the query to pull email
addresses, but only for non-deleted users.

Code:*/

SELECT 
  id AS user_id
	,email_address
FROM dsv1069.users
WHERE deleted_at IS NULL;

--************************************************************************************************************

/*Exercise 2:

--Goal: Use the items table to count the number of items for sale in each category

Code:*/

SELECT 
  category
	,COUNT(id) AS item_count
FROM dsv1069.items
GROUP BY category
ORDER BY item_count DESC;

--************************************************************************************************************

/*Exercise 3:

--Goal: Select all of the columns from the result when you JOIN the users table to the orders
table

Code:*/

SELECT *
FROM dsv1069.orders
JOIN dsv1069.users ON orders.user_id = users.id;

--************************************************************************************************************

/*Exercise 4:

--Goal: Check out the query below. This is not the right way to count the number of viewed_item
events. Determine what is wrong and correct the error.

Code:*/

SELECT COUNT(DISTINCT event_id) AS events
FROM dsv1069.events
WHERE event_name = "view_item"

--************************************************************************************************************

/* Exercise 5:

--Goal:Compute the number of items in the items table which have been ordered. The query
below runs, but it isn’t right. Determine what is wrong and correct the error or start from scratch.

Code:*/

SELECT COUNT(DISTINCT orders.item_id) AS item_count
FROM dsv1069.orders

--************************************************************************************************************

/* Exercise 6:

--Goal: For each user figure out IF a user has ordered something, and when their first purchase was.

Code:*/



--************************************************************************************************************

/* Exercise 7:

--Goal: Figure out what percent of users have ever viewed the user profile page, but this query
isn’t right. Check to make sure the number of users adds up, and if not, fix the query.

Code:*/
