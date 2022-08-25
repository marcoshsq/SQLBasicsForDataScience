-- What is a Dependency?

-- 01. ETL stands for:

Extract, Transform and Load

-- 02. If I say that table X is dependent on table Y which table should be generated (or refreshed) first?

Table Y

-- 03. Based on the material covered in this lesson What is a Dependency? which of the following statements is true?

The view_items table depends on the events table

-- 04. Based on the code snippet below, which statements are definitely true: 

CREATE TABLE table_x AS
SELECT date
       ,COUNT(*)
FROM table_y
GROUP BY date;

Table_x is dependent on table_y
