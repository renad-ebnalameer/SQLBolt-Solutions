/* 
Lesson 15: Deleting rows
Goal:
- Learn how to remove records from a table using DELETE

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 15.1
-- Task: Remove all movies that were released
-- before 2005
--------------------------------------------------

DELETE FROM movies
WHERE year < 2005;

-- Explanation:
-- DELETE removes rows from a table
-- The condition year < 2005 matches movies released before 2005
-- Only rows matching the WHERE clause are deleted

--------------------------------------------------
-- Exercise 15.2
-- Task: Remove all movies directed by
-- Andrew Stanton
--------------------------------------------------

DELETE FROM movies
WHERE director = "Andrew Stanton";

-- Explanation:
-- This deletes all movies directed by Andrew Stanton
-- WHERE ensures only the intended rows are removed

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. DELETE permanently removes data
-- 2. WHERE is essential to avoid deleting all rows
-- 3. Conditions can target specific records
-- 4. Always verify rows with SELECT before DELETE
