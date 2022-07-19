/*Why tables are useful:

Create tables to made models and predictions;
Create dashboards;
Visualize data with other tools
Extract data from other sources

Exmple:*/

CREATE TABLE Shoes
  (
  Id    char(10)  PRIMARY KEY,
  Brand char(10)  Not Null,
  Type char(250)  Not Null,
  Color char(250)  Not Null,
  Price decimal(8,2)  Not Null,
  Desc varchar(750)  Null,
  )
