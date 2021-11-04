
--UNION (Get rows from both tables.Duplicate row is taken only once)
SELECT * FROM Table1
UNION 
SELECT * FROM Table2

--UNION ALL(Get all rows from both tables. Duplicates will also come)
SELECT * FROM Table1
UNION ALL
SELECT * FROM Table2

--Intersect(Get common rows from both tables.)
SELECT * FROM Table1
Intersect
SELECT * FROM Table2

--EXCEPT(Get those rows from Table 1 which are not in B)
SELECT * FROM Table1
EXCEPT
SELECT * FROM Table2