1. How many folders were created? Enter the number of records you see from the output below (include the _delta_log in your count)
answer: 9

2. Delete all the records where City is null. How many records are left in the delta table?
answer: 416869

3. After you deleted all records where the City is null, how many files were removed? Hint: Look at operationsMetrics in the transaction log using the DESCRIBE HISTORY command.
answer: 22

4. There are quite a few missing Call_Type_Group values. Use the UPDATE command to replace any null values with Non Life-threatening.
After you replace the null values, how many Non Life-threatening call types are there?
answer: 302506

5. Travel back in time to the earliest version of the Delta table (version 0). How many records were there?
answer: 417419
