/*Why to use a Temporary Table?

- Temporary tables are deleted when the current session is finished;
- But they are faster than creating regular tables!
- And useful for complex queries using subsets and joins. */

CREATE TEMPORARY TABLE Sandals As 
  (
    SELECT *
    FROM Shoes
    WHERE shoe_type = 'sandals'
  )
