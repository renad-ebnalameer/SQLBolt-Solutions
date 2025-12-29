/* 
Lesson 01: SELECT
Goal:
- Learn how to retrieve specific columns from a table

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 1.1
-- Task: Find the title of each film
--------------------------------------------------

SELECT title
FROM movies;

-- Explanation:
-- The SELECT keyword specifies the column to retrieve
-- FROM movies defines the table source

--------------------------------------------------
-- Exercise 1.2
-- Task: Find the director of each film
--------------------------------------------------

SELECT director
FROM movies;

-- Explanation:
-- Selecting a different column from the same table

--------------------------------------------------
-- Exercise 1.3
-- Task: Find the title and director of each film
--------------------------------------------------

SELECT title, director
FROM movies;

-- Explanation:
-- Multiple columns can be selected by separating them with commas
