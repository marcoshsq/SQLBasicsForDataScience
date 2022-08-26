/* Create a Rollup Table

Log onto Mode Analytics and from the home page, create a new report by clicking on the green
plus sign button in the upper right-hand corner. Enter the starter code where provided for each
exercise. You may want to create a new tab for each exercise.

Please use the discussion forum for any questions and/or comments you might have. Once you
have tried the exercises, feel free to watch the solutions video. Good luck with your practice!

Note: When querying a table, remember to prepend dsv1069, which is the schema, or folder
that contains the course data. */

-- ********************************************************************************************************************

/* Exercise 1: Create a subtable of orders per day. Make sure you decide whether you are
counting invoices or line items.

Code: */

SELECT DATE (paid_at) AS day
	,COUNT(DISTINCT invoice_id) AS orders
	,COUNT(DISTINCT line_item_id) AS line_items
FROM dsv1069.orders
GROUP BY day
ORDER BY day ASC;

-- ********************************************************************************************************************

/* Exercise 2: “Check your joins”. We are still trying to count orders per day. In this step join the
sub table from the previous exercise to the dates rollup table so we can get a row for every
date. Check that the join works by just running a “select *” query

Code: */

SELECT *
FROM dsv1069.dates_rollup
LEFT OUTER JOIN (
	SELECT DATE (paid_at) AS day
		,COUNT(DISTINCT invoice_id) AS orders
		,COUNT(DISTINCT line_item_id) AS line_items
	FROM dsv1069.orders
	GROUP BY day
	) daily_orders ON daily_orders.day = dates_rollup.DATE;

-- ********************************************************************************************************************

/* Exercise 3: “Clean up your Columns” In this step be sure to specify the columns you actually
want to return, and if necessary do any aggregation needed to get a count of the orders made
per day.

Code: */

SELECT dates_rollup.DATE
	,COALESCE(SUM(orders), 0) AS orders
	,COALESCE(SUM(items_ordered), 0) AS items_ordered
FROM dsv1069.dates_rollup
LEFT OUTER JOIN (
	SELECT DATE (paid_at) AS day
		,COUNT(DISTINCT invoice_id) AS orders
		,COUNT(DISTINCT line_item_id) AS items_ordered
	FROM dsv1069.orders
	GROUP BY day
	) daily_orders ON daily_orders.day = dates_rollup.DATE
GROUP BY dates_rollup.DATE;

-- ********************************************************************************************************************

/* Exercise 4: Weekly Rollup. Figure out which parts of the JOIN condition need to be edited
create 7 day rolling orders table.

Code: */

SELECT *
FROM dsv1069.dates_rollup
LEFT OUTER JOIN (
	SELECT DATE (orders.paid_at) AS day
		,COUNT(DISTINCT invoice_id) AS orders
		,COUNT(DISTINCT line_item_id) AS items_ordered
	FROM dsv1069.orders
	GROUP BY DATE (orders.paid_at)
	) daily_orders ON dates_rollup.DATE >= daily_orders.day
	AND dates_rollup.d7_ago < daily_orders.day;

-- ********************************************************************************************************************

/* Exercise 5: Column Cleanup. Finish creating the weekly rolling orders table, by performing
any aggregation steps and naming your columns appropriately.

Code: */

SELECT dates_rollup.DATE
	,COALESCE(SUM(orders), 0) AS orders
	,COALESCE(SUM(items_ordered), 0) AS items_ordered
	,COUNT(*) AS rows
FROM dsv1069.dates_rollup
LEFT OUTER JOIN (
	SELECT DATE (orders.paid_at) AS day
		,COUNT(DISTINCT invoice_id) AS orders
		,COUNT(DISTINCT line_item_id) AS items_ordered
	FROM dsv1069.orders
	GROUP BY DATE (orders.paid_at)
	) daily_orders ON dates_rollup.DATE >= daily_orders.day
	AND dates_rollup.d7_ago < daily_orders.day
GROUP BY dates_rollup.DATE;
