/* 
Lesson 09: Queries with expressions
Goal:
- Learn how to use calculations and expressions in SELECT queries

Tables used:
- Movies
- Boxoffice
*/

--------------------------------------------------
-- Exercise 9.1
-- Task: List all movies and their combined sales
-- in millions of dollars
--------------------------------------------------

SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales_millions
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;

-- Explanation:
-- Domestic and international sales are added together
-- The result is divided by 1,000,000 to convert to millions
-- AS is used to give the column a readable name

--------------------------------------------------
-- Exercise 9.2
-- Task: List all movies and their ratings in percent
--------------------------------------------------

SELECT 
    title,
    rating * 10 AS rating_percent
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;

-- Explanation:
-- Ratings are stored on a scale of 0–10
-- Multiplying by 10 converts the rating to a percentage

--------------------------------------------------
-- Exercise 9.3
-- Task: List all movies that were released
-- on even number years
--------------------------------------------------

SELECT title, year
FROM movies
WHERE year % 2 = 0;

-- Explanation:
-- The modulo operator (%) returns the remainder of a division
-- Even years have no remainder when divided by 2

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. Expressions allow calculations inside SELECT
-- 2. Arithmetic operators can combine or transform data
-- 3. AS renames calculated columns for clarity
-- 4. The modulo operator (%) is useful for even/odd checks
