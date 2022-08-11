/*A Cartesian Join allows you to take each record from the first table and match it with all of the rows from
the second table.

So, if the first table contains x rows and the second table
contains y rows, you'll have the end result of x multiplied by y.

So, as you might guess, this is computationally taxing
because if you have a table with just ten records in it and the second table
with ten records, just performing a Cross Join is already going to increase it
to 100.    */
