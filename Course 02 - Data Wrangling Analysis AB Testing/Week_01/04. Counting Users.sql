/*Counting Users

Log onto Mode Analytics and from the home page, create a new report by clicking on the green
plus sign button in the upper right-hand corner. Enter the starter code where provided for each
exercise. You may want to create a new tab for each exercise.

Please use the discussion forum for any questions and/or comments you might have. Once you
have tried the exercises, feel free to watch the solutions video. Good luck with your practice!
Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data.

*/

-- ****************************************************************************************

/* Exercise 1: We’ll be using the users table to answer the question “How many new users are
added each day?“. Start by making sure you understand the columns in the table.

Code:*/

SELECT DATE (created_at) AS day
	,COUNT(*) AS users
FROM dsv1069.users
GROUP BY day
ORDER BY day ASC;

-- ****************************************************************************************

/* Exercise 2: WIthout worrying about deleted user or merged users, count the number of users
added each day. 
Code:*/

SELECT DATE (created_at) AS day
	,COUNT(id) AS num_users
FROM dsv1069.users
GROUP BY day
ORDER BY day ASC;

-- ****************************************************************************************

/* Exercise 3: Consider the following query. Is this the right way to count merged or deleted
users? If all of our users were deleted tomorrow what would the result look like?

Code: */

SELECT DATE (created_at) AS day
	,COUNT(*) AS users
FROM dsv1069.users
WHERE deleted_at IS NULL
	AND (
		id <> parent_user_id
		OR parent_user_id IS NULL
		)
GROUP BY day;

-- ****************************************************************************************

/* Exercise 4: Count the number of users deleted each day. Then count the number of users
removed due to merging in a similar way.

Code: (Use the result from #2 as a guide) */

SELECT DATE (created_at) AS day
	,COUNT(*) AS users
FROM dsv1069.users
WHERE deleted_at IS NOT NULL
GROUP BY day;

-- ****************************************************************************************

/* Exercise 5: Use the pieces you’ve built as subtables and create a table that has a column for
the date, the number of users created, the number of users deleted and the number of users
merged that day.

Code: */

SELECT new.day
	,new.new_added_users
	,COALESCE(deleted.deleted_users, 0) AS deleted_users
	,COALESCE(merged.merged_users, 0) AS merged_users
	,(new.new_added_users - COALESCE(deleted.deleted_users, 0) - COALESCE(merged.merged_users, 0)) AS net_added_users
FROM (
	SELECT DATE (created_at) AS day
		,COUNT(*) AS new_added_users
	FROM dsv1069.users
	GROUP BY day
	) new
LEFT JOIN (
	SELECT DATE (created_at) AS day
		,COUNT(*) AS deleted_users
	FROM dsv1069.users
	WHERE deleted_at IS NOT NULL
	GROUP BY day
	) deleted ON deleted.day = new.day
LEFT JOIN (
	SELECT DATE (merged_at) AS day
		,COUNT(*) AS merged_users
	FROM dsv1069.users
	WHERE id <> parent_user_id
		AND parent_user_id IS NOT NULL
	GROUP BY day
	) merged ON merged.day = new.day;

-- ****************************************************************************************

/* Exercise 6: Refine your query from #5 to have informative column names and so that null
columns return 0.

Code: */



-- ****************************************************************************************

/* Exercise 7: What if there were days where no users were created, but some users were deleted or merged.
Does the previous query still work? No, it doesn’t. Use the dates_rollup as a backbone for this
query, so that we won’t miss any dates.

Code: */

SELECT * 
FROM dsv1069.dates_rollup

-- ****************************************************************************************
