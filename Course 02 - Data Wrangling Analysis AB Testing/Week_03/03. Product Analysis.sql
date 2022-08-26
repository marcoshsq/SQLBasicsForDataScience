/* Product Analysis

Log onto Mode Analytics and from the home page, create a new report by clicking on the green
plus sign button in the upper right-hand corner. Enter the starter code where provided for each
exercise. You may want to create a new tab for each exercise.

Please use the discussion forum for any questions and/or comments you might have. Once you
have tried the exercises, feel free to watch the solutions video. Good luck with your practice!

Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data.

*/

-- ********************************************************************************************************************

-- Exercise 0: Count how many users we have

-- Code:

SELECT COUNT(ID) AS id_count
FROM dsv1069.users;

-- ********************************************************************************************************************

-- Exercise 1: Find out how many users have ever ordered

-- Code:

SELECT COUNT(DISTINCT user_id) AS count_users_ordered
FROM dsv1069.orders;

-- ********************************************************************************************************************

-- Exercise 2: Goal find how many users have reordered the same item

-- Code:

SELECT COUNT(DISTINCT user_id) AS users_who_reordered
FROM (
	SELECT user_id
		,item_id
		,COUNT(DISTINCT line_item_id) AS times_user_ordered
	FROM dsv1069.orders
	GROUP BY user_id
		,item_id
	) user_level_orders
WHERE times_user_ordered > 1;

-- ********************************************************************************************************************

-- Exercise 3: Do users even order more than once?

-- Code:

SELECT COUNT(DISTINCT user_id)
FROM (
	SELECT user_id
		,COUNT(DISTINCT invoice_id) AS order_count
	FROM dsv1069.orders
	GROUP BY user_id
	) user_level
WHERE order_count > 1;

-- ********************************************************************************************************************

-- Exercise 4: Orders per item

-- Code:

SELECT item_id
	,COUNT(line_item_id) AS times_ordered
FROM dsv1069.orders
GROUP BY item_id
ORDER BY times_ordered DESC;

-- ********************************************************************************************************************

-- Exercise 5: Orders per category

-- Code:

SELECT item_category
	,COUNT(line_item_id) AS times_ordered
FROM dsv1069.orders
GROUP BY item_category
ORDER BY times_ordered DESC;

-- ********************************************************************************************************************

-- Exercise 6: Goal: Do user order multiple things from the same category?

-- Code:

SELECT item_category
	,AVG(times_category_ordered) AS avg_times_category_ordered
FROM (
	SELECT user_id
		,item_category
		,COUNT(DISTINCT line_item_id) AS times_category_ordered
	FROM dsv1069.orders
	GROUP BY user_id
		,item_category
	) user_level
GROUP BY item_category;

-- ********************************************************************************************************************

-- Exercise 7: Goal: Find the average time between orders and Decide if this analysis is necessary!

-- Code:

SELECT first_orders.user_id
	,DATE (first_orders.paid_at) AS first_order_date
	,DATE (second_orders.paid_at) AS second_order_date
	,DATE (second_orders.paid_at) - DATE (first_orders.paid_at) AS date_diff
FROM (
	SELECT user_id
		,invoice_id
		,paid_at
		,DENSE_RANK() OVER (
			PARTITION BY user_id ORDER BY paid_at ASC
			) AS order_num
	FROM dsv1069.orders
	) first_orders
JOIN (
	SELECT user_id
		,invoice_id
		,paid_at
		,DENSE_RANK() OVER (
			PARTITION BY user_id ORDER BY paid_at ASC
			) AS order_num
	FROM dsv1069.orders
	) second_orders ON first_orders.user_id = second_orders.user_id
WHERE first_orders.order_num = 1
	AND second_orders.order_num = 2;
