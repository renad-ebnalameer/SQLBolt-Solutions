/* 
Lesson 06: Multi-table queries with JOINs
Goal:
- Learn how to retrieve data from multiple tables using INNER JOIN

Tables used:
- Movies
- Boxoffice
*/

--------------------------------------------------
-- Exercise 6.1
-- Task: Find the domestic and international sales for each movie
--------------------------------------------------

SELECT 
    title,
    domestic_sales,
    international_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;

-- Explanation:
-- INNER JOIN combines rows from both tables where the movie id matches
-- This returns sales data for each movie

--------------------------------------------------
-- Exercise 6.2
-- Task: Show the sales numbers for each movie that did better
-- internationally rather than domestically
--------------------------------------------------

SELECT 
    title,
    domestic_sales,
    international_sales
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- Explanation:
-- WHERE filters movies where international sales exceed domestic sales

--------------------------------------------------
-- Exercise 6.3
-- Task: List all the movies by their ratings in descending order
--------------------------------------------------

SELECT 
    title,
    rating
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

-- Explanation:
-- ORDER BY DESC sorts movies from highest to lowest rating

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. INNER JOIN links rows from two tables using a common column
-- 2. The ON clause defines how the tables are related
-- 3. WHERE filters joined data
-- 4. ORDER BY sorts the final results
