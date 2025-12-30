/* 
Lesson 04: Filtering and sorting Query results
Goal:
- Learn how to sort results and limit the number of rows returned

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 4.1
-- Task: List all directors of Pixar movies (alphabetically), without duplicates
--------------------------------------------------

SELECT DISTINCT director
FROM movies
ORDER BY director ASC;

-- Explanation:
-- DISTINCT removes duplicate director names
-- ORDER BY sorts the results alphabetically (A to Z)

--------------------------------------------------
-- Exercise 4.2
-- Task: List the last four Pixar movies released 
-- (ordered from most recent to least)
--------------------------------------------------

SELECT title, year
FROM movies
ORDER BY year DESC
LIMIT 4;

-- Explanation:
-- ORDER BY DESC sorts movies from newest to oldest
-- LIMIT restricts the result to the last 4 movies

--------------------------------------------------
-- Exercise 4.3
-- Task: List the first five Pixar movies sorted alphabetically
--------------------------------------------------

SELECT title, year
FROM movies
ORDER BY title ASC
LIMIT 5;

-- Explanation:
-- ORDER BY title ASC sorts movies alphabetically
-- LIMIT returns only the first 5 results

--------------------------------------------------
-- Exercise 4.4
-- Task: List the next five Pixar movies sorted alphabetically
--------------------------------------------------

SELECT title, year
FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;

-- Explanation:
-- OFFSET skips the first 5 rows
-- LIMIT then returns the next 5 movies

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. ORDER BY controls the sorting of query results
-- 2. DISTINCT removes duplicate rows
-- 3. LIMIT restricts the number of rows returned
-- 4. OFFSET skips a specified number of rows
