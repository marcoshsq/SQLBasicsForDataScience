/*Why tables are useful:

Create tables to made models and predictions;
Create dashboards;
Visualize data with other tools
Extract data from other sources

Example:*/

CREATE TABLE Shoes
  (
  Id    char(10)  PRIMARY KEY,
  Brand char(10)  Not Null,
  Type char(250)  Not Null,
  Color char(250)  Not Null,
  Price decimal(8,2)  Not Null,
  Desc varchar(750)  Null,
  );

/*Nulls and Primary Keys

- Every column is either null or not null;
- An error will be returned if one tries to submit a column with no value;
- Null values != empty strings
- Primary keys can't be nulls, they must have a value!

*/

/*To insert data into the table*/

INSERT INTO Shoes
  (
    Id,
  Brand,
  Type,
  Color,
  Price,
  Desc
  )
VALUES 
  (
    "1522",
    "Gucci",
    "Slippers",
    "Pink",
    "6950,00",
    "Null"
  );
