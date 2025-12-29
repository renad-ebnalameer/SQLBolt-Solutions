/* 
Lesson 02: Queries with constraints (WHERE)
Goal:
- Learn how to filter rows using conditions

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 2.1
-- Task: Find the movie with a row id of 6
--------------------------------------------------

SELECT *
FROM movies
WHERE id = 6;

-- Explanation:
-- WHERE is used to filter rows based on a condition
-- This query returns the movie with id equal to 6

--------------------------------------------------
-- Exercise 2.2
-- Task: Find the movies released in the years between 2000 and 2010
--------------------------------------------------

SELECT title, year
FROM movies
WHERE year BETWEEN 2000 AND 2010;

-- Explanation:
-- BETWEEN filters rows within a specific range (inclusive)
-- This returns movies released from 2000 to 2010

--------------------------------------------------
-- Exercise 2.3
-- Task: Find the movies not released in the years between 2000 and 2010
--------------------------------------------------

SELECT title, year
FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

-- Explanation:
-- NOT BETWEEN excludes values within the specified range
-- This returns movies released outside 2000–2010

--------------------------------------------------
-- Exercise 2.4
-- Task: Find the first 5 Pixar movies and their release year
--------------------------------------------------

SELECT title, year
FROM movies
WHERE id <= 5;

-- Explanation:
-- Filtering by id allows selecting the first inserted rows
-- This query returns the first 5 Pixar movies

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. WHERE filters rows based on conditions
-- 2. BETWEEN and NOT BETWEEN are useful for range queries
-- 3. WHERE works before the data is returned
