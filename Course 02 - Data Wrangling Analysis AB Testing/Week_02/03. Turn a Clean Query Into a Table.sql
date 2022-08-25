-- Turn a Clean Query Into a Table 

-- Here we create the table structure:
CREATE TABLE "view_item_event" (
	event_id VARCHAR(32) NOT NULL PRIMARY KEY
	,event_time VARCHAR(26)
	,user_id INT (10)
	,platform VARCHAR(10)
	,item_id INT (10)
	,referrer VARCHAR(17)
	);

INSERT INTO "view_item_event"

-- Initial query:
CREATE TABLE view_item_event_1 AS
SELECT event_id
	,event_time
	,user_id
	,platform
	,MAX(CASE 
			WHEN parameter_name = "item_id"
				THEN paramater_value
			ELSE NULL
			END) AS item_id
	,MAX(CASE 
			WHEN parameter_name = "referrer"
				THEN paramater_value
			ELSE NULL
			END) AS referrer
FROM events
WHERE event_name = "view_item"
GROUP BY event_id
	,event_time
	,user_id
	,platform
ORDER BY event_id;


