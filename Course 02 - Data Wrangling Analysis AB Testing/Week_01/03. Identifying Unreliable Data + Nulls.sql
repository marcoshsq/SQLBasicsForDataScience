/* Identifying Unreliable Data + Nulls

Log onto Mode Analytics and from the home page, create a new report by clicking on the green
plus sign button in the upper right-hand corner. Enter the starter code where provided for each
exercise. You may want to create a new tab for each exercise.

Please use the discussion forum for any questions and/or comments you might have. Once you
have tried the exercises, feel free to watch the solutions video. Good luck with your practice!

Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data.

*/

-- *************************************************************************************************************************************************

/* Exercise 1: Using any methods you like determine if you can you trust this events table.

Code: */

SELECT DATE (event_time) AS DATE
	,COUNT(*)
FROM dsv1069.events_201701
GROUP BY DATE (event_time);

-- *************************************************************************************************************************************************

/* Exercise 2: Using any methods you like, determine if you can you trust this events table. (HINT: When did
we start recording events on mobile)

Code: */

SELECT DATE (event_time) AS DATE
  ,event_name
	,COUNT(*)
FROM dsv1069.events_201701
GROUP BY DATE (event_time);

-- *************************************************************************************************************************************************

/* Exercise 3: Imagine that you need to count item views by day. You found this table
item_views_by_category_temp - should you use it to answer your questiuon?

Code: */



-- *************************************************************************************************************************************************

/* Exercise 4: Using any methods you like, decide if this table is ready to be used as a source of
truth. 

Code: */



-- *************************************************************************************************************************************************

/* Exercise 5: Is this the right way to join orders to users? Is this the right way this join.

Code: */



