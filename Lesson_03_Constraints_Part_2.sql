/*
Lesson 03: Queries with constraints (Part 2)
Goal:
- Learn how to filter text data using WHERE
- Use LIKE, NOT, and pattern matching

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 3.1
-- Task: Find all the Toy Story movies
--------------------------------------------------

SELECT title, director
FROM movies
WHERE title LIKE 'Toy Story%';

-- Explanation:
-- LIKE is used for pattern matching
-- 'Toy Story%' returns all movies that start with "Toy Story"

--------------------------------------------------
-- Exercise 3.2
-- Task: Find all the movies directed by John Lasseter
--------------------------------------------------

SELECT title, director
FROM movies
WHERE director = 'John Lasseter';

-- Explanation:
-- The = operator is used to match exact text values
-- This returns all movies directed by John Lasseter

--------------------------------------------------
-- Exercise 3.3
-- Task: Find all the movies (and director) not directed by John Lasseter
--------------------------------------------------

SELECT title, director
FROM movies
WHERE director != 'John Lasseter';

-- Explanation:
-- != is used to exclude specific values
-- This query returns movies not directed by John Lasseter

--------------------------------------------------
-- Exercise 3.4
-- Task: Find all the WALL-* movies
--------------------------------------------------

SELECT title, director
FROM movies
WHERE title LIKE 'WALL-%';

-- Explanation:
-- % is a wildcard that matches any number of characters
-- This returns all movies that start with "WALL-"

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. LIKE is useful for searching text patterns
-- 2. % matches any number of characters
-- 3. _ matches exactly one character
-- 4. != filters out unwanted values
