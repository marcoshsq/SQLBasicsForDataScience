/* The SELECT statement

This command is responsible for telling the database what you want to select.

Need to specify two pieces of information to use a SELECT, 
what you want and where you want to select it from. 

Example
*/

SELECT prod_name
FROM Products;

/*Output:

prod_name:
Shampoo
Toothpaste
Soap
*/

/*Retrieving <ultiple Columns

Add multiple column names, and use a comma to separate them.

*/

SELECT  prod_name,
        prod_id,
        prod_price
FROM Products;

/*

But to retrieve all columns is better to use a WildCard (*) instead of the columns names.

*/

SELECT *
FROM Products;

/*To limit a query result*/

/*sqLite*/
SELECT prod_name
FROM Products
LIMIT 5;

/*Oracle*/
SELECT prod_name
FROM Products
WHERE ROWNUM <=5;

/*db2*/
SELECT prod_name
FROM Products
FETCH FIRST 5 ROWS ONLY;


/**********************************************************/

SELECT columns you want to see 
FROM the table they are
LIMIT number of records;