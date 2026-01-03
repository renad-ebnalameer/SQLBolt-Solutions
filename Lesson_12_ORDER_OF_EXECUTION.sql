/* 
Lesson 12: Order of execution of a Query
Goal:
- Understand how SQL executes queries step by step
- Learn how GROUP BY and aggregates work after JOINs

Tables used:
- Movies
- Boxoffice
*/

--------------------------------------------------
-- Exercise 12.1
-- Task: Find the number of movies each director
-- has directed
--------------------------------------------------

SELECT director, COUNT(*) AS number_of_movies
FROM movies
GROUP BY director;

-- Explanation:
-- FROM movies is executed first
-- GROUP BY director groups movies by director
-- COUNT(*) counts the number of movies per director

--------------------------------------------------
-- Exercise 12.2
-- Task: Find the total domestic and international
-- sales that can be attributed to each director
--------------------------------------------------

SELECT 
    director,
    SUM(domestic_sales + international_sales) 
        AS Cumulative_sales_from_all_movies
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
GROUP BY director;

-- Explanation:
-- FROM and INNER JOIN are executed first
-- Domestic and international sales are added per movie
-- SUM() calculates cumulative sales per director
-- GROUP BY director groups the results by director

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. SQL queries are executed in a logical order
-- 2. JOINs are processed before aggregation
-- 3. Expressions can be used inside aggregate functions
-- 4. GROUP BY defines how results are grouped
