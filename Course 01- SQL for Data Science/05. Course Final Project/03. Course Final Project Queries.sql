-- Code written to answer the questions of the final project of the course.

/*-----------------------------------------------------------------------------------------------
*************************                     Part 01.                   ***********************  
-----------------------------------------------------------------------------------------------*/

-----------------------------------------------------------------------------------------------

-- 01. 

SELECT COUNT(*)
FROM table_name (Table names are found in the schema.)

-----------------------------------------------------------------------------------------------

-- 02. 

SELECT COUNT(DISTINCT(key))
FROM table_name (Table names are found in the schema.)

-----------------------------------------------------------------------------------------------

-- 03. 

SELECT *
FROM user
WHERE id IS NULL
	OR name IS NULL
	OR review_count IS NULL
	OR yelping_since IS NULL
	OR useful IS NULL
	OR funny IS NULL
	OR cool IS NULL
	OR fans IS NULL
	OR average_stars IS NULL
	OR compliment_hot IS NULL
	OR compliment_more IS NULL
	OR compliment_profile IS NULL
	OR compliment_cute IS NULL
	OR compliment_list IS NULL
	OR compliment_note IS NULL
	OR compliment_plain IS NULL
	OR compliment_cool IS NULL
	OR compliment_funny IS NULL
	OR compliment_writer IS NULL
	OR compliment_photos IS NULL;

-----------------------------------------------------------------------------------------------

-- 04. 

SELECT AVG(column) (Column names are found in the schema.)
FROM table (Table names are found in the schema.)

-----------------------------------------------------------------------------------------------

-- 05. 

SELECT city
	,sum(review_count)
FROM business
GROUP BY city
ORDER BY sum(review_count) DESC;

-----------------------------------------------------------------------------------------------

-- 06.1. 

SELECT stars AS StarRating
	,count(stars)
FROM business AS b
WHERE city = 'Avon'
GROUP BY stars;

-----------------------------------------------------------------------------------------------

-- 06.2. 

SELECT stars AS StarRating
	,count(stars)
FROM business AS b
WHERE city = 'Beachwood'
GROUP BY stars;

-----------------------------------------------------------------------------------------------

-- 07. 

SELECT name
	,review_count
FROM user
ORDER BY review_count DESC limit 3;

-----------------------------------------------------------------------------------------------

-- 08.

SELECT id
	,name
	,review_count
	,fans
	,yelping_since
FROM user
ORDER BY fans DESC;

-----------------------------------------------------------------------------------------------

-- 09. 

SELECT (
		SELECT count(TEXT)
		FROM review
		WHERE TEXT LIKE '%love'
		) AS love_text
	,(
		SELECT count(TEXT)
		FROM review
		WHERE TEXT LIKE '%hate%'
		) AS hate_text;

-----------------------------------------------------------------------------------------------

-- 10. 

SELECT NAMES
	,fans
FROM user orber BY fans DESC limit 10;

-----------------------------------------------------------------------------------------------

-- 11. 

SELECT name
	,fans
	,useful
	,funny
	,review_count
	,yelping_since
FROM user
ORDER BY fans DESC;

-----------------------------------------------------------------------------------------------

/*-----------------------------------------------------------------------------------------------
*************************                      Part 02.                   ***********************  
-----------------------------------------------------------------------------------------------*/

-- 01.

SELECT B.name
	,C.category
	,B.city
	,B.postal_code AS zipcode hours
	,CASE 
		WHEN stars BETWEEN 2
				AND 3
			THEN '2-3 stars'
		WHEN stars BETWEEN 4
				AND 5
			THEN '4-5 stars'
		END AS rating
	,B.review_count AS reviews
FROM business B
INNER JOIN hours H ON B.id = H.business_id
INNER JOIN category C ON C.business_id = B.id
WHERE city = 'Phoenix'
	AND category = 'Restaurants'
	AND rating IN (
		'2-3stars'
		,'4-5 stars'
		)
GROUP BY name
ORDER BY stars DESC;

-----------------------------------------------------------------------------------------------

-- 02.

SQL code used for analysis:

SELECT COUNT(DISTINCT id)
	,COUNT(DISTINCT city)
	,AVG(stars)
	,AVG(review_count)
	,is_open
FROM business
GROUP BY is_open;

-----------------------------------------------------------------------------------------------

-- 03.

SELECT b.name AS business
	,a.name AS attribute
	,a.value
	,b.STATE
	,b.stars
	,b.review_count
FROM business b
INNER JOIN category c ON c.business_id = b.id
INNER JOIN attribute a ON a.business_id = b.id
WHERE (
		a.name LIKE 'alcohol'
		OR a.name LIKE 'wifi'
		OR a.name LIKE 'goodforkids'
		)
	AND category = 'Restaurants'
	AND b.STATE = 'AZ'
ORDER BY stars DESC
	,review_count
  
-----------------------------------------------------------------------------------------------
