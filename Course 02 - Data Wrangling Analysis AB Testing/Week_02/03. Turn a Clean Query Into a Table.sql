-- Turn a Clean Query Into a Table 

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
